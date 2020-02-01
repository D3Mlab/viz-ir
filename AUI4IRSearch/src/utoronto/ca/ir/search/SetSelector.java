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
package utoronto.ca.ir.search;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.balusc.util.DateUtil;
import org.apache.lucene.analysis.en.EnglishAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.DoublePoint;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.Term;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.BooleanClause;
import org.apache.lucene.search.BooleanQuery;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.Sort;
import org.apache.lucene.search.SortField;
import org.apache.lucene.search.TermQuery;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.search.similarities.LMDirichletSimilarity;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import smile.clustering.RelevanceScoring;
import utoronto.ca.ir.evaluation.SetEvaluation;
import utoronto.ca.ir.indexing.Indexer;
import utoronto.ca.ir.indexing.TermFreqVector;
import utoronto.ca.ir.scoring.ScoringFunction;
import unimelb.edu.au.tools.Functions;

/**
 * This is the main class of the project which provides the skeleton for
 * implementing AUI search algorithms.
 *
 * @author rbouadjenek
 */
public abstract class SetSelector {

    public final IndexSearcher is;
    public Map<String, Double> malicious;
    public List<String> perm;
    private double rate_malicious = 0;
    public final int topTerm = 100;
    public static final String DESC = "desc";
    public static final String ASC = "asc";
    private final Random r = new Random(1L);

    public SetSelector(IndexSearcher is, Map<String, Double> malicious) {
        this.is = is;
        this.malicious = malicious;
        int m = 0;
        m = malicious.values().stream().filter((b) -> (b > 0)).map((_item) -> 1).reduce(m, Integer::sum);
        rate_malicious = m * 100 / malicious.size();
    }

    public SetSelector(String indexDir) throws IOException {
        Directory dir = FSDirectory.open((new File(indexDir).toPath()));
        is = new IndexSearcher(DirectoryReader.open(dir));
        is.setSimilarity(new LMDirichletSimilarity());
        malicious = new HashMap<>();
        this.rate_malicious = 0;
        perm = new ArrayList<>(malicious.keySet());
        java.util.Collections.shuffle(perm);// shuffle the data.
        BooleanQuery.setMaxClauseCount(Integer.MAX_VALUE);
    }

    /**
     * Constructor used only for offline evaluation.
     *
     * @param indexDir
     * @param rate_malicious
     * @throws IOException
     */
    public SetSelector(String indexDir, double rate_malicious) throws IOException {
        Directory dir = FSDirectory.open((new File(indexDir).toPath()));
        is = new IndexSearcher(DirectoryReader.open(dir));
        is.setSimilarity(new LMDirichletSimilarity());
        malicious = new HashMap<>();
        this.rate_malicious = rate_malicious;
        IndexReader reader = is.getIndexReader();
        for (int i = 0; i < reader.maxDoc(); i++) {
            Document doc = reader.document(i);
            String docId = doc.get(Indexer.MID);
            malicious.put(docId, 0.0);
        }
        perm = new ArrayList<>(malicious.keySet());
        java.util.Collections.shuffle(perm, r);// shuffle the data.
        BooleanQuery.setMaxClauseCount(Integer.MAX_VALUE);
        random_EmailLabel();
//        ground_Truth_EmailLabel();
    }

    public Map<String, Double> getYBasedOnHits(TopDocs hits, double gamma) throws IOException {
        Map<String, Double> Y = new HashMap<>();
        if (hits.totalHits > 0) {
            float maxscore = hits.scoreDocs[0].score;
            for (ScoreDoc scoreDoc : hits.scoreDocs) {
                Document doc = is.doc(scoreDoc.doc);
                String docid = doc.get(Indexer.MID);
                String type = doc.get(Indexer.TYPE);
//            System.out.println((double) scoreDoc.score / maxscore);
                double relavance = (double) scoreDoc.score / maxscore;
                double score;
                if (type.toLowerCase().startsWith("neg")) {
                    score = gamma * 0 + (1 - gamma) * relavance;
                } else {
                    score = gamma * 1 + (1 - gamma) * relavance;
                }
                Y.put(docid, score);
            }
        }
        return Y;
    }

    /**
     * This method randomly tag email as malicious.
     */
    private void random_EmailLabel() {
        int totalMalicious = 0;
        List<String> listKeys = new ArrayList<>(malicious.keySet());
        while (totalMalicious < (rate_malicious / 100 * malicious.size())) {
            int index = r.nextInt(malicious.size());
            String id = listKeys.get(index);
            if (malicious.get(id) == 0) {
                malicious.put(id, 1.0);
                totalMalicious++;
            }
        }
    }

    /**
     * This method tags email as malicious based on ground truth.
     */
    private void ground_Truth_EmailLabel() throws IOException {
        for (int i = 0; i < is.getIndexReader().maxDoc(); i++) {
            Document doc = is.getIndexReader().document(i);
            String docId = doc.get(Indexer.MID);
            String label = doc.get(Indexer.TYPE);
            if (!label.equals("neg")) {
                malicious.put(docId, 1.0);
            }
        }
    }

    public abstract Filter getOptimalFilter(TopDocs hits, SetEvaluation setEval, ScoringFunction sf) throws Exception;

    public List<Filter> getTopFilters(TopDocs hits, SetEvaluation setEval, ScoringFunction sf, int k) throws Exception {
        SetEvaluation setEval_copy = setEval.clone();
        Map<String, ScoreDoc> in = new LinkedHashMap<>(0);
        for (ScoreDoc scoreDoc : hits.scoreDocs) {
            Document doc = is.doc(scoreDoc.doc);
            in.put(doc.get(Indexer.MID), scoreDoc);
        }
        List<Filter> filters = new ArrayList<>();
        ScoringFunction sf_copy = sf.clone();
        for (int i = 0; i < k; i++) {
            System.err.println("Computig filter " + (i + 1) + ".");
            ScoreDoc[] scores = map2ScoreDoc(in);
            TopDocs new_hits = new TopDocs(in.size(), scores, scores[0].score);
            Filter f = getOptimalFilter(new_hits, setEval_copy, sf_copy);
            for (Document doc : f.getOutList()) {
                String docid = doc.get(Indexer.MID);
                sf_copy.malicious.remove(docid);
                in.remove(docid);
            }
            filters.add(f);
            if (in.isEmpty()) {
                break;
            }
            setEval_copy.recomputeC(sf_copy);
        }
        return filters;
    }

    /**
     * Method that transforms a filter to a query.
     *
     * @param filter
     * @return
     */
    public BooleanQuery filterToQuery(Filter filter) {
        BooleanQuery.Builder bq = new BooleanQuery.Builder();
        /**
         * 1- Build the filter.
         */
        bq.add(getIdsFilter(getIds(filter.inList)), BooleanClause.Occur.FILTER);
        /**
         * Add time query.
         */
        if (filter.t_start != -1 && filter.t_end != -1) {
            bq.add(DoublePoint.newRangeQuery(Indexer.DATE, filter.t_start, filter.t_end), BooleanClause.Occur.FILTER);
        }
        /**
         * Add position query.
         */
        if (filter.xmin != Double.NaN && filter.ymin != Double.NaN && filter.xmax != Double.NaN && filter.ymax != Double.NaN) {
            bq.add(getPositionFilter(filter.xmin,
                    filter.ymin,
                    filter.xmax,
                    filter.xmax), BooleanClause.Occur.FILTER);
        }
        /**
         * Add keywords query.
         */
        for (String keyword : filter.keywords) {
            bq.add(new TermQuery(new Term(Indexer.BODY, keyword)), BooleanClause.Occur.MUST_NOT);
        }
        return bq.build();
    }

    /**
     * This method evaluates a given filter (query).
     *
     * @param filter
     * @param setEval
     * @param sf
     * @return
     * @throws Exception
     */
    public double evaluateFilter(Query filter, SetEvaluation setEval, ScoringFunction sf) throws Exception {
        return setEval.getExpectedSetScore(getIds(executeFilter(filter)), sf);
    }

    /**
     * This method returns a set of email within a given time windows ordered by
     * time.
     *
     * @param filter
     * @return
     * @throws java.io.IOException
     */
    public TopDocs executeFilter(Query filter) throws IOException {
//        long startTime = System.currentTimeMillis();
//        Sort sort = new Sort(
//                SortField.FIELD_SCORE,
//                new SortField(Indexer.DATE_SORT, SortField.Type.LONG));
//        System.out.println(filter);
        TopDocs hits = is.search(filter, Integer.MAX_VALUE);
//        long endTime = System.currentTimeMillis();
//        System.err.println("Found " + hits.totalHits
//                + " document(s) has matched query. Processed in " + Functions.getTimer(endTime - startTime) + ".");
        return hits;
    }

    /**
     * This method returns a set of email within a given time windows.
     *
     * @param start
     * @param end
     * @return
     * @throws java.text.ParseException
     * @throws java.io.IOException
     */
    public TopDocs searchDateOrder(String start, String end) throws ParseException, IOException, Exception {
        return executeFilter(getTimeFilter(start, end));
    }

    /**
     * This method create a time query.
     *
     * @param start
     * @param end
     * @return
     * @throws ParseException
     * @throws Exception
     */
    public Query getTimeFilter(String start, String end) throws ParseException, Exception {
        String dateFormatPaternS = DateUtil.determineDateFormat(start);
        String dateFormatPaternE = DateUtil.determineDateFormat(end);
        SimpleDateFormat datetimeFormatter = new SimpleDateFormat(dateFormatPaternS);
        Date dateStart = datetimeFormatter.parse(start);
        datetimeFormatter = new SimpleDateFormat(dateFormatPaternE);
        Date dateEnd = datetimeFormatter.parse(end);
        if (dateStart.after(dateEnd)) {
            throw new Exception("Incorrect date order. Start date should be < end date.");
        }
        Timestamp ts = new Timestamp(dateStart.getTime());
        long dateS = ts.getTime();
        Timestamp te = new Timestamp(dateEnd.getTime());
        long dateE = te.getTime();
        return DoublePoint.newRangeQuery(Indexer.DATE, dateS, dateE);
    }

    /**
     * This method retrieves documents in a given bondy box.
     *
     * @param lowerValue_x
     * @param lowerValue_y
     * @param upperValue_x
     * @param upperValue_y
     * @return
     * @throws IOException
     */
    public TopDocs positionSearch(double lowerValue_x, double lowerValue_y, double upperValue_x, double upperValue_y) throws IOException {
        Query query = getPositionFilter(lowerValue_x, lowerValue_y, upperValue_x, upperValue_y);
        System.err.println(query);
        long startTime = System.currentTimeMillis();
        TopDocs hits = is.search(query, Integer.MAX_VALUE);
        long endTime = System.currentTimeMillis();
        System.err.println("Found " + hits.totalHits
                + " document(s) has matched query. Processed in " + Functions.getTimer(endTime - startTime) + ".");
        return hits;
    }

    /**
     * This method create a boundy box query.
     *
     * @param lowerValue_x
     * @param lowerValue_y
     * @param upperValue_x
     * @param upperValue_y
     * @return
     */
    public Query getPositionFilter(double lowerValue_x, double lowerValue_y, double upperValue_x, double upperValue_y) {
        double[] lowerValues = new double[]{lowerValue_x, lowerValue_y};
        double[] upperValues = new double[]{upperValue_x, upperValue_y};
        return DoublePoint.newRangeQuery(Indexer.POSITION, lowerValues, upperValues);
    }

    /**
     * This method create a keywords query.
     *
     * @param text
     * @return
     * @throws org.apache.lucene.queryparser.classic.ParseException
     */
    public Query getKeywordsFilter(String text) throws org.apache.lucene.queryparser.classic.ParseException {
        String text_query = QueryParser.escape(text);
        QueryParser parser = new QueryParser(Indexer.BODY, new EnglishAnalyzer());
        return parser.parse(text_query);
    }

    /**
     * This method retrieves documents given ids.
     *
     * @param ids
     * @return
     * @throws IOException
     */
    public TopDocs idsSearch(List<String> ids) throws IOException {
        Query query = getIdsFilter(ids);
        System.err.println(query);
        long startTime = System.currentTimeMillis();
        TopDocs hits = is.search(query, Integer.MAX_VALUE);
        long endTime = System.currentTimeMillis();
        System.err.println("Found " + hits.totalHits
                + " document(s) has matched query. Processed in " + Functions.getTimer(endTime - startTime) + ".");
        return hits;
    }

    /**
     * This method returns an ids query.
     *
     * @param ids
     * @return
     */
    public Query getIdsFilter(List<String> ids) {
        BooleanQuery.Builder bqFilter = new BooleanQuery.Builder();
        BooleanQuery.Builder bqFinal = new BooleanQuery.Builder();
        for (String id : ids) {
            bqFilter.add(new TermQuery(new Term(Indexer.MID, id)), BooleanClause.Occur.SHOULD);
        }
        bqFinal.add(bqFilter.build(), BooleanClause.Occur.FILTER);
        return bqFilter.build();
    }

    /**
     * This method extract ids from Document object and returns a list.
     *
     * @param docs
     * @return
     */
    public List<String> getIds(List<Document> docs) {
        List<String> out = new ArrayList<>();
        docs.stream().forEach((doc) -> {
            out.add(doc.get(Indexer.MID));
        });
        return out;
    }

    /**
     * This method extract ids from TopDocs object and returns a list of ids.
     *
     * @param hits
     * @return
     * @throws java.io.IOException
     */
    public List<String> getIds(TopDocs hits) throws IOException {
        return getIds(TopDocs2List(hits));
    }

    /**
     * This method converts the Lucene TopDocs structure to a List.
     *
     * @param hits
     * @return
     * @throws IOException
     */
    public List<Document> TopDocs2List(TopDocs hits) throws IOException {
        List<Document> list = new ArrayList<>();
        for (ScoreDoc scoreDoc : hits.scoreDocs) {
            Document doc = is.doc(scoreDoc.doc);
            list.add(doc);
        }
        return list;
    }

    /**
     * This method returns the first r% of the ids from perm.
     *
     * @param r
     * @return
     * @throws java.lang.Exception
     */
    public List<String> getDataByRate(double r) throws Exception {
        if (r < 0 || r > 100) {
            throw new Exception("r is rate and should be > 0 and < 100.");
        }
        int k = (int) (perm.size() * r / 100);
        return perm.subList(0, k);
    }

    /**
     * This method returns the first n ids from perm.
     *
     * @param n
     * @return
     * @throws java.lang.Exception
     */
    public List<String> getData(int n) throws Exception {
        int k = Math.min(perm.size(), n);
        return new ArrayList<>(perm.subList(0, k));
    }

    public List<String> getData(int n, double rate) throws Exception {
        List<String> out = new ArrayList<>();
        int nbr_malicious = (int) Math.round(n * rate / 100);
        int nbr_no_malicious = n - nbr_malicious;
        Iterator<String> it = perm.iterator();
        while (out.size() < n) {
            String id = it.next();
            Double label = malicious.get(id);
            if (label > 0) {
                if (nbr_malicious != 0) {
                    out.add(id);
                    nbr_malicious--;
                }
            } else {
                if (nbr_no_malicious != 0) {
                    out.add(id);
                    nbr_no_malicious--;
                }
            }

        }
//        System.out.println("N = " + n + ", rate = " + rate + ", nbr_malicious = " + nbr_malicious);
//        for (String id : out) {
//            System.out.println(id + "\t" + malicious.get(id));
//        }
//        System.out.println("**************************************");

        return out;
    }

    /**
     * This method returns the n random ids.
     *
     * @param n
     * @return
     * @throws java.lang.Exception
     */
    public List<String> getRandomData(int n) throws Exception {
        List<String> l = new ArrayList<>(malicious.keySet());
        java.util.Collections.shuffle(l, r);// shuffle the data.
        int k = Math.min(l.size(), n);
        return l.subList(0, k);
    }

    /**
     * This method reshuffles perm.
     */
    public void reshuffle() {
        java.util.Collections.shuffle(perm, r);// shuffle the data.

    }

    /**
     * This method prints the results given in parameter.
     *
     * @param hits
     * @throws Exception
     */
    public void printSearch(TopDocs hits) throws Exception {
        int i = 0;
        for (ScoreDoc scoreDoc : hits.scoreDocs) {
            i++;
            Document doc = is.doc(scoreDoc.doc);
            System.out.println(doc.get(Indexer.MID) + " " + i + " " + scoreDoc.score + " " + new Date(Long.parseLong(doc.get(Indexer.DATE_STORE))));
        }
    }

    /**
     * This method creates an inverted index from a hit.
     *
     * @param hits
     * @return
     * @throws IOException
     */
    public Map<String, Set<String>> getKeyword2Docs(TopDocs hits) throws IOException {
        Map<String, Set<String>> keyword2docs = new HashMap<>(); //local inverted index.
        for (ScoreDoc scoreDoc : hits.scoreDocs) {
            Document doc = is.doc(scoreDoc.doc);
            String id = doc.get(Indexer.MID);
            TermFreqVector tfv = new TermFreqVector(is.getIndexReader().getTermVector(scoreDoc.doc, Indexer.BODY));
            for (String term : tfv.getTermFreqVector().keySet()) {
                if (keyword2docs.containsKey(term)) {
                    keyword2docs.get(term).add(id);
                } else {
                    Set<String> docSet = new HashSet<>();
                    docSet.add(id);
                    keyword2docs.put(term, docSet);
                }
            }
        }
        return keyword2docs;
    }

    /**
     * This method creates a termFreqVector object from a TopDocs object.
     *
     * @param hits
     * @return
     * @throws IOException
     */
    public Map<String, Integer> getTermFreqVector(TopDocs hits) throws IOException {
        Map<String, Integer> TermFreqVector = new HashMap<>();
        for (ScoreDoc scoreDoc : hits.scoreDocs) {
            TermFreqVector tfv = new TermFreqVector(is.getIndexReader().getTermVector(scoreDoc.doc, Indexer.BODY));
            for (String term : tfv.getTermFreqVector().keySet()) {
                if (term.equals("amp") || term.equals("rt")) {
                    continue;
                }
                if (TermFreqVector.containsKey(term)) {
                    int v = TermFreqVector.get(term);
                    TermFreqVector.put(term, v + tfv.getFreq(term));
                } else {
                    TermFreqVector.put(term, tfv.getFreq(term));
                }
            }
        }
        return TermFreqVector;
    }

    /**
     * This method return the list of keywords in a given document. This method
     * uses the internal Lucene docid.
     *
     * @param docid The internal Lucene docid.
     * @return
     * @throws IOException
     */
    public List<String> getDocKeywords(int docid) throws IOException {
        TermFreqVector tfv = new TermFreqVector(is.getIndexReader().getTermVector(docid, Indexer.BODY));
        return new ArrayList<>(tfv.getTerms());
    }

    /**
     * This method return top k terms from a TermFreqVector object based on
     * frequency.
     *
     * @param TermFreqVector
     * @param k
     * @return
     */
    public List<String> getTopTermByFreq(Map<String, Integer> TermFreqVector, int k) {
        List<String> keywords = new ArrayList<>(TermFreqVector.keySet());
        keywords.sort((String k1, String k2) -> {
            try {
                return Double.compare(TermFreqVector.get(k2), TermFreqVector.get(k1));
            } catch (Exception ex) {
                return -1;
            }
        });
        return keywords.subList(0, Math.min(k, keywords.size()));
    }

    /**
     * This method return top k terms from a TermFreqVector object based on
     * frequency.
     *
     * @param hits
     * @param k
     * @return
     * @throws java.io.IOException
     */
    public List<String> getTopTermByFreq(TopDocs hits, int k) throws IOException {
        Map<String, Integer> TermFreqVector = getTermFreqVector(hits);
        return getTopTermByFreq(TermFreqVector, k);
    }

    /**
     * This method return top k terms from a TermFreqVector object based on
     * frequency.
     *
     * @param list
     * @param k
     * @return
     * @throws java.io.IOException
     */
    public List<String> getTopTermByFreq(List<Document> list, int k) throws IOException {
        Query query = getIdsFilter(getIds(list));
        TopDocs hits = is.search(query, list.size());
        Map<String, Integer> TermFreqVector = getTermFreqVector(hits);
        return getTopTermByFreq(TermFreqVector, k);
    }

    /**
     * This method returns top k terms from a hit based on mutual information.
     *
     * @param hits
     * @param k
     * @return
     * @throws java.io.IOException
     */
    public List<String> getTopTermByMI(TopDocs hits, int k) throws IOException {
        Map<String, Integer> TermFreqVector = getTermFreqVector(hits);
        Map<String, Set<String>> keyword2docs = getKeyword2Docs(hits); //local inverted index.
        List<String> ids = getIds(TopDocs2List(hits));
        List<String> keywords = new ArrayList<>(TermFreqVector.keySet());
        Map<String, Double> miTerms = new HashMap<>();
        /**
         * This part computes mutual information of terms based on a given ids.
         */
        double total = hits.totalHits;
        Set<String> _malicious = new HashSet<>();
        Set<String> _harmless = new HashSet<>();
        for (String id : ids) {
            if (malicious.get(id) > 0) {
                _malicious.add(id);
            } else {
                _harmless.add(id);
            }
        }
        double Pw_m = (double) _malicious.size() / total;
        double Pwo_m = (double) _harmless.size() / total;
        for (String keyword : keywords) {
            double Pw_k = (double) keyword2docs.get(keyword).size() / total;
            double Pwo_k = 1 - Pw_k;
            Set<String> Z = new HashSet<>(keyword2docs.get(keyword));

            Set<String> A = new HashSet<>(Z);// malicious and contain keyword
            A.retainAll(_malicious);

            Set<String> B = new HashSet<>(Z);// harmless and contain keyword
            B.retainAll(_harmless);

            Set<String> C = new HashSet<>(_malicious);
            C.removeAll(Z);// malicious and don't contain keyword

            Set<String> D = new HashSet<>(_harmless);
            D.removeAll(Z);// harmless and don't contain keyword
//            if (!A.isEmpty() && !B.isEmpty() && !C.isEmpty() && !D.isEmpty()) {
//                System.out.println("*************");
//                System.out.println(A.size());
//                System.out.println(B.size());
//                System.out.println(C.size());
//                System.out.println(D.size());
//                System.out.println("*************");
//            }
            double Pw_m_w_k = (double) A.size() / total;
            double Pw_m_wo_k = (double) C.size() / total;
            double Pwo_m_w_k = (double) B.size() / total;
            double Pwo_m_wo_k = (double) D.size() / total;

            double mi = Pw_m_w_k * Math.log10(Pw_m_w_k / (Pw_m * Pw_k))
                    + Pw_m_wo_k * Math.log10(Pw_m_wo_k / (Pw_m * Pwo_k))
                    + Pwo_m_w_k * Math.log10(Pwo_m_w_k / (Pwo_m * Pw_k))
                    + Pwo_m_wo_k * Math.log10(Pwo_m_wo_k / (Pwo_m * Pwo_k));
            if (Double.isNaN(mi)) {
                mi = 0;
            }
            miTerms.put(keyword, mi);
//            System.out.println("mi= "+mi);
        }
        keywords.sort((String k1, String k2) -> {
            try {
                double mi1 = miTerms.get(k1);
                double mi2 = miTerms.get(k2);
                return Double.compare(mi2, mi1);
            } catch (Exception ex) {
                return -1;
            }
        });
//        for(String keyword:keywords){
//            System.out.println(keyword+":"+miTerms.get(keyword));
//        }
        return keywords.subList(0, Math.min(k, keywords.size()));
    }

    /**
     * This method returns an ordered list based on the dimension given by the
     * field. The order can be descendent (DESC) or ascendent (ASC).
     *
     * @param list
     * @param field
     * @param order
     * @return
     */
    public List<Document> orderList(List<Document> list, String field, String order) {
        List<Document> copy = new ArrayList<>(list);
        copy.sort((Document doc1, Document doc2) -> {
            try {
                double list1_eval = Double.parseDouble(doc1.get(field));
                double list2_eval = Double.parseDouble(doc2.get(field));
                if (order.toLowerCase().equals(DESC)) {
                    return Double.compare(list2_eval, list1_eval);
                } else {
                    return Double.compare(list1_eval, list2_eval);
                }
            } catch (Exception ex) {
                Logger.getLogger(SetSelector.class.getName()).log(Level.SEVERE, null, ex);
                return -1;
            }
        }
        );
        return copy;
    }

    /**
     * This method inverse the order of a list.
     *
     * @param list
     * @return
     */
    public List<Document> inverseList(List<Document> list) {
        if (list == null) {
            return new ArrayList<>();
        }
        List<Document> copy = new ArrayList<>();
        for (int i = list.size() - 1; i >= 0; i--) {
            copy.add(list.get(i));
        }
        return copy;

    }

    public double[][] TopDocs2Array(TopDocs hits, RelevanceScoring scoring) throws IOException {
        List<String> terms = getTopTermByFreq(hits, topTerm);
        double[][] data = new double[(int) hits.scoreDocs.length][terms.size() + 3];
        int i = 0;
        for (ScoreDoc scoreDoc : hits.scoreDocs) {
            Document doc = is.doc(scoreDoc.doc);
            TermFreqVector tfv = new TermFreqVector(is.getIndexReader().getTermVector(scoreDoc.doc, Indexer.BODY));
            data[i][0] = Double.parseDouble(doc.get(Indexer.DATE_STORE));
            data[i][1] = Double.parseDouble(doc.get(Indexer.POS_Y));
            data[i][2] = Double.parseDouble(doc.get(Indexer.POS_X));
            Map<String, Integer> map = tfv.getTermFreqVector();
//            System.out.println(doc.get(Indexer.BODY));
            for (String token : map.keySet()) {
                if (terms.contains(token)) {
                    double score = 0;
                    switch (scoring) {
                        case TF:
                            score = Math.log10(map.get(token) + 1d);
                            break;
                        case TFIDF:
                            int N = is.getIndexReader().getDocCount(Indexer.BODY);
                            int N_t = is.getIndexReader().docFreq(new Term(Indexer.BODY, token)) + 1;
                            double idf = Math.log10(N / N_t);
                            double tf = Math.log10(map.get(token) + 1d);
                            score = tf * idf;
                            break;
                        case BOOLEAN:
                            //yes=1, no=0
                            score = 1;
                    }
                    int idx = terms.indexOf(token) + 3;
                    data[i][idx] = score;
                }
            }
            i++;
        }
        System.out.println("i= " + i);
        /**
         * Data standarization.
         */
//        smile.math.Math.standardize(data);
        /**
         * Multiply by factors.
         */
//        for (i = 0; i < data.length; i++) {
//            data[i][1] = data[i][1] * alpha;
//            data[i][1] = data[i][2] * alpha;
//        }
//        for (i = 0; i < data.length; i++) {
//            for (int j = 3; j < data[0].length; j++) {
////                data[i][j] = data[i][j] * beta;
//                System.out.print(data[i][j]+" ");
//            }
//            System.out.println("");
//        }
        return data;
    }

    /**
     * This method convert a List of Documents to a Map with ids for the keys.
     *
     * @param docs
     * @return
     */
    public Map<String, Document> List2Map(List<Document> docs) {
        Map<String, Document> out = new HashMap<>();
        docs.stream().forEach((doc) -> {
            out.put(doc.get(Indexer.MID), doc);
        });
        return out;
    }

    public ScoreDoc[] map2ScoreDoc(Map<String, ScoreDoc> map) {
        ScoreDoc[] out = new ScoreDoc[map.size()];
        int i = 0;
        for (ScoreDoc scoreDoc : map.values()) {
            out[i] = scoreDoc;
            i++;
        }
        return out;
    }

    public class Filter {

        long t_start;
        long t_end;
        double xmin;
        double xmax;
        double ymin;
        double ymax;
        List<String> keywords;
        public List<Document> outList;
        public List<Document> inList;
        double performance;
        List<String> topTerms;
        String stringTerms = "";

        public Filter(List<Document> inList, List<Document> outList, double performance, List<String> keywords, long t_start, long t_end, double xmin, double xmax, double ymin, double ymax) throws IOException {
            this.inList = inList;
            this.outList = outList;
            this.keywords = keywords;
            this.t_start = t_start;
            this.t_end = t_end;
            this.xmin = xmin;
            this.xmax = xmax;
            this.ymin = ymin;
            this.ymax = ymax;
            this.performance = performance;
            topTerms = getTopTermByFreq(outList, 20);
            for (String term : topTerms) {
                stringTerms += term + ", ";
            }
            if (!stringTerms.equals("")) {
                stringTerms = stringTerms.substring(0, stringTerms.length() - 2);
            }
        }

        public long getT_start() {
            return t_start;
        }

        public long getT_end() {
            return t_end;
        }

        public double getXmin() {
            return xmin;
        }

        public double getXmax() {
            return xmax;
        }

        public double getYmin() {
            return ymin;
        }

        public double getYmax() {
            return ymax;
        }

        public double getPerformance() {
            return performance;
        }

        public List<String> getTopTerms() {
            return topTerms;
        }

        public String getStringTerms() {
            return stringTerms;
        }

        public List<String> getKeywords() {
            return keywords;
        }

        public List<Document> getOutList() {
            return outList;
        }

        public List<Document> getInList() {
            return inList;
        }

    }

}
