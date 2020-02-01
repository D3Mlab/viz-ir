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
package utoronto.ca.ir.search.exhaustive;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
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
import utoronto.ca.ir.scoring.NoisyGroundTruth;
import utoronto.ca.ir.scoring.ScoringFunction;

/**
 * This class implements the brute force search method using time.
 *
 * @author rbouadjenek
 */
public class ExhaustiveSelectorKeywords extends ExhaustiveSelector {

    public ExhaustiveSelectorKeywords(String indexDir, double rate_malicious) throws IOException {
        super(indexDir, rate_malicious);
    }

    public ExhaustiveSelectorKeywords(IndexSearcher is, Map<String, Double> malicious) {
        super(is, malicious);
    }

    public List<Document> getOptimalSet(TopDocs hits, SetEvaluation setEval, ScoringFunction sf) throws Exception {
        List<List<Document>> all = new ArrayList<>();
        List<String> topMITerms = getTopTermByMI(hits, topTerm);
        /**
         * 1- Build the filter.
         */
        Query filter = getIdsFilter(getIds(TopDocs2List(hits)));
        int n = topMITerms.size();
        int N = (int) Math.pow(2d, Double.valueOf(n));
        for (int i = 1; i < N; i++) {
            String code = Integer.toBinaryString(N | i).substring(1);
            BooleanQuery.Builder bq = new BooleanQuery.Builder();
            bq.add(filter, BooleanClause.Occur.FILTER);
            for (int j = 0; j < n; j++) {
                if (code.charAt(j) == '1') {
                    TermQuery tq = new TermQuery(new Term(Indexer.BODY, topMITerms.get(j)));
                    bq.add(tq, BooleanClause.Occur.MUST_NOT);
                }
            }
            all.add(TopDocs2List(executeFilter(bq.build())));
        }
        List<Document> docSet = TopDocs2List(hits);
        for (int i = 0; i < docSet.size(); i++) {
            List<Document> l = new ArrayList<>();
            for (int j = i; j < docSet.size(); j++) {
                Document d = docSet.get(j);
                l.add(d);
                List<Document> copy = new ArrayList<>(l);
                all.add(copy);
            }
        }
        return getBest(all, sf, setEval);
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
        // TODO code application logic here
        ExhaustiveSelectorKeywords selector = new ExhaustiveSelectorKeywords("/Volumes/Macintosh HD/Users/rbouadjenek/Documents/AUI4IR_data/raw_enron_index_v1.0/", 20);
        List<String> ids = selector.getData(10);
        Query q = selector.getIdsFilter(ids);
        TopDocs hits1 = selector.executeFilter(q);
        ScoringFunction sf = new NoisyGroundTruth(selector.malicious, 1);
        SetEvaluation se = new SetF1_Score(selector.getIds(hits1), sf);
        selector.getOptimalSet(hits1, se, sf);
    }

    @Override
    public List<Filter> getTopFilters(TopDocs hits, SetEvaluation setEval, ScoringFunction sf, int k) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Filter getOptimalFilter(TopDocs hits, SetEvaluation setEval, ScoringFunction sf) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
