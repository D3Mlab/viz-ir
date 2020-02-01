/**
 * Copyright (c) 2018 Reda Bouadjenek
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package utoronto.ca.ir.search.greedy;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.lucene.document.Document;
import org.apache.lucene.index.Term;
import org.apache.lucene.search.BooleanClause;
import org.apache.lucene.search.BooleanQuery;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.TermQuery;
import org.apache.lucene.search.TopDocs;
import utoronto.ca.ir.evaluation.SetEvaluation;
import utoronto.ca.ir.evaluation.SetF1_Score;
import utoronto.ca.ir.indexing.Indexer;
import utoronto.ca.ir.scoring.ScoringFunction;
import utoronto.ca.ir.search.SetSelector;
import static utoronto.ca.ir.search.SetSelector.ASC;

/**
 * This method implements the algorithm that combines the Greedy filters.
 *
 * @author rbouadjenek
 */
public class GreedySelector extends SetSelector {

    public GreedySelector(IndexSearcher is, Map<String, Double> malicious) {
        super(is, malicious);
    }

    public GreedySelector(String indexDir, double rate_malicious) throws IOException {
        super(indexDir, rate_malicious);
    }

    public GreedySelector(String indexDir) throws IOException {
        super(indexDir, 0);
    }

    @Override
    public Filter getOptimalFilter(TopDocs hits, SetEvaluation setEval, ScoringFunction sf) throws Exception {
        /**
         * Execute the algorithm.
         */
        Map<String, Set<String>> keyword2docs = getKeyword2Docs(hits);
        List<String> sub_keywords = getTopTermByFreq(hits, topTerm);
        StringBuilder sb = new StringBuilder();
//        double filterPerformance = setEval.getExpectedSetScore(getIds(hits), sf);
        List<Document> list = TopDocs2List(hits);
        List<String> keywordTerms = new ArrayList<>();
        System.err.println("Start");
        while (true) {
            System.out.println(sb.toString() + list.size());
            double filterPerformance = setEval.getExpectedSetScore(getIds(list), sf);
            /**
             * Execute time filter.
             */
            double timeFilterScore = 0;
            List<Document> outTime = new ArrayList<>();
            long start = System.currentTimeMillis();
            if (!sb.toString().trim().endsWith("T")) {
//                long start2 = System.currentTimeMillis();
                outTime = orderList(list, Indexer.DATE_STORE, ASC);
                outTime = getOptimalSetGreedy(outTime, setEval, sf);
                if (outTime.size() != list.size()) {
                    timeFilterScore = setEval.getExpectedSetScore(getIds(outTime), sf);
                }
            }
            long end = System.currentTimeMillis();
            long millis = (end - start);
//            System.out.println("Time time: " + millis + "ms.");
            /**
             * Execute position filter.
             */
            double positionFilterScore = 0;
            List<Document> outPosition = new ArrayList<>();
            start = System.currentTimeMillis();
            if (!sb.toString().trim().endsWith("P")) {
                outPosition = new ArrayList<>(list);
                outPosition = orderList(outPosition, Indexer.POS_X, ASC);
                outPosition = getOptimalSetGreedy(outPosition, setEval, sf);

                outPosition = orderList(outPosition, Indexer.POS_Y, ASC);
                outPosition = getOptimalSetGreedy(outPosition, setEval, sf);
                if (outPosition.size() != list.size()) {
                    positionFilterScore = setEval.getExpectedSetScore(getIds(outPosition), sf);
                }
            }
            end = System.currentTimeMillis();
            millis = (end - start);
//            System.out.println("Position time: " + millis + "ms.");
            /**
             * Execute Keyword filter.
             */
            String current_terms = null;
            double keywordFilterScore = 0;
            start = System.currentTimeMillis();
            List<Document> outKeywords = new ArrayList<>(list);
            for (String keyword : sub_keywords) {
                Map<String, Document> copy = new HashMap<>(List2Map(list));
                copy.keySet().removeAll(keyword2docs.get(keyword));
                double list_eval = setEval.getExpectedSetScore(getIds(new ArrayList<>(copy.values())), sf);
                if (list_eval >= keywordFilterScore) {
                    current_terms = keyword;
                    keywordFilterScore = list_eval;
                    outKeywords = new ArrayList<>(copy.values());
                }
            }
            end = System.currentTimeMillis();
            millis = (end - start);
            /**
             * Testing step.
             */
            if (timeFilterScore >= positionFilterScore && timeFilterScore >= keywordFilterScore && timeFilterScore > filterPerformance) {
                sb.append("-> T ");
                list = outTime;

            } else if (positionFilterScore >= timeFilterScore && positionFilterScore >= keywordFilterScore && positionFilterScore > filterPerformance) {
                sb.append("-> P ");
                list = outPosition;
            } else if (keywordFilterScore >= timeFilterScore && keywordFilterScore >= positionFilterScore && keywordFilterScore > filterPerformance) {
                sb.append("-> K ");
                keywordTerms.add(current_terms);
                list = outKeywords;
            } else {
                double performance = setEval.getExpectedSetScore(getIds(list), sf);

                list = orderList(list, Indexer.DATE_STORE, ASC);
                long s = Long.parseLong(list.get(0).get(Indexer.DATE_STORE));
                long e = Long.parseLong(list.get(list.size() - 1).get(Indexer.DATE_STORE));

                list = orderList(list, Indexer.POS_X, ASC);
                double ymin = Double.parseDouble(list.get(0).get(Indexer.POS_X));
                double ymax = Double.parseDouble(list.get(list.size() - 1).get(Indexer.POS_X));

                list = orderList(list, Indexer.POS_Y, ASC);
                double xmin = Double.parseDouble(list.get(0).get(Indexer.POS_Y));
                double xmax = Double.parseDouble(list.get(list.size() - 1).get(Indexer.POS_Y));
                Filter filter = new Filter(TopDocs2List(hits), list, performance, keywordTerms, s, e, xmin, xmax, ymin, ymax);

                return filter;
            }
        }
    }

    public List<Document> getOptimalSetGreedy(List<Document> list, SetEvaluation setEval, ScoringFunction sf) throws Exception {
        // calculate midpoint to cut set in half
        /**
         * Sort the results based on time.
         */
        List<Document> out = new ArrayList(list);
        int size = 0;
        boolean left = false, right = false;
        while (out.size() != size) {
            size = out.size();
            double p_out = setEval.getExpectedSetScore(getIds(out), sf);
            List<Document> copy;

            if (!left) {
                copy = new ArrayList<>(out);
                copy.remove(0);
                double p_copy = setEval.getExpectedSetScore(getIds(copy), sf);
                if (p_copy > p_out) {
                    out = new ArrayList<>(copy);
                    p_out = p_copy;
                } else {
                    left = true;
                }
            }
            if (!right) {
                copy = new ArrayList<>(out);
                copy.remove(copy.size() - 1);
                if (setEval.getExpectedSetScore(getIds(copy), sf) > p_out) {
                    out = new ArrayList<>(copy);
                } else {
                    right = true;
                }
            }
        }
        return out;

    }

    /**
     * @param args the command line arguments
     * @throws java.io.IOException
     */
    public static void main(String[] args) throws IOException, Exception {
        // TODO code application logic here
        if (args.length == 0) {
            args = new String[3];
            args[0] = "/Applications/NetBeans/apache-tomcat-9.0.4/bin/ND_data_index_v3.0";
        }
        GreedySelector selector = new GreedySelector(args[0]);
        System.out.println(selector.is.getIndexReader().numDocs());
        BooleanQuery.Builder bqFinal = new BooleanQuery.Builder();
        String start = "2013-01-01", end = "2015-01-01";

        Query timeFilter = selector.getTimeFilter(start, end);
        bqFinal.add(timeFilter, BooleanClause.Occur.FILTER);

        TermQuery neg = new TermQuery(new Term(Indexer.TYPE, "neg"));
        BooleanQuery.Builder bqNDs = new BooleanQuery.Builder();
        bqNDs.add(neg, BooleanClause.Occur.SHOULD);

        TermQuery pos1 = new TermQuery(new Term(Indexer.TYPE, "pos1"));
        TermQuery pos2 = new TermQuery(new Term(Indexer.TYPE, "pos2"));
        TermQuery pos3 = new TermQuery(new Term(Indexer.TYPE, "pos3"));
        bqNDs.add(pos1, BooleanClause.Occur.SHOULD);
        bqNDs.add(pos2, BooleanClause.Occur.SHOULD);
        bqNDs.add(pos3, BooleanClause.Occur.SHOULD);

        bqFinal.add(bqNDs.build(), BooleanClause.Occur.FILTER);

        bqFinal.add(selector.getKeywordsFilter("flood colorado boulder denver"), BooleanClause.Occur.MUST);

        System.out.println("Query: " + bqFinal.build());
        TopDocs hits = selector.is.search(bqFinal.build(), 1000);
        System.out.println("Hits= " + hits.totalHits);
        ScoringFunction sf = new ScoringFunction(selector.getYBasedOnHits(hits, 0.9));
        SetF1_Score se = new SetF1_Score(selector.getIds(hits), sf, 1);
        System.out.println(selector.getTopFilters(hits, se, sf, 6).size());

    }

}
