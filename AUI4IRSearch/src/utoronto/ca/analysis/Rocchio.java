/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utoronto.ca.analysis;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.lucene.analysis.en.EnglishAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.index.Term;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TermQuery;
import org.apache.lucene.search.TopDocs;
import utoronto.ca.ir.evaluation.SetEvaluation;
import utoronto.ca.ir.indexing.Indexer;
import utoronto.ca.ir.indexing.MyStopWords;
import utoronto.ca.ir.scoring.ScoringFunction;
import utoronto.ca.ir.search.SetSelector;
import unimelb.edu.au.tools.Functions;

/**
 *
 * @author rbouadjenek
 */
public class Rocchio extends SetSelector {

    public Rocchio(String indexDir) throws IOException {
        super(indexDir);
    }


    @Override
    public List<Filter> getTopFilters(TopDocs hits, SetEvaluation setEval, ScoringFunction sf, int k) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void runRocchio(Query query) throws IOException {
        System.out.println(query);
        TopDocs hits = executeFilter(query);
        Map<String, Double> rocchioVec = new HashMap<>();
        for (ScoreDoc scoreDoc : hits.scoreDocs) {
            Document doc = is.doc(scoreDoc.doc);
            Map<String, Integer> map = Functions.tokenizeToMap(doc.get(Indexer.BODY), new EnglishAnalyzer(MyStopWords.ENGLISH_STOP_WORDS_SET));
            for (String token : map.keySet()) {
                int N = is.getIndexReader().getDocCount(Indexer.BODY);
                int N_t = is.getIndexReader().docFreq(new Term(Indexer.BODY, token)) + 1;
                double idf = Math.log10(N / N_t);
                double tf = Math.log10(map.get(token) + 1d);
                double score = tf * idf;
                if (rocchioVec.containsKey(token)) {
                    double val = rocchioVec.get(token) + score;
                    rocchioVec.put(token, val);
                } else {
                    rocchioVec.put(token, score);
                }
            }
        }
        for (String token : rocchioVec.keySet()) {
            double val = rocchioVec.get(token) / hits.scoreDocs.length;
            rocchioVec.put(token, val);
        }
        /**
         * Sort the list.
         */
        List<String> list = new ArrayList<>(rocchioVec.keySet());
        list.sort((String token1, String token2) -> {
            try {
                double v1 = rocchioVec.get(token1);
                double v2 = rocchioVec.get(token2);
                return Double.compare(v2, v1);

            } catch (Exception ex) {
                Logger.getLogger(SetSelector.class.getName()).log(Level.SEVERE, null, ex);
                return -1;
            }
        }
        );
        int i = 0;
        for (String token : list) {
            i++;
            System.out.println(i + "- " + token + " -> " + rocchioVec.get(token));
            if (i == 20) {
                break;
            }
        }

    }

    public Set<String> printTerms(Query query) throws IOException {
        Set<String> out = new HashSet<>();
        TopDocs hits = executeFilter(query);
        Map<String, Integer> map = getTermFreqVector(hits);
        for (String token : map.keySet()) {
            int freq = map.get(token);
            if (freq > 5) {
                for (int i = 0; i < freq; i++) {
                    System.out.print(token + " ");
                }
//                System.out.println(token);
                out.add(token);
                System.out.println("");
            }
        }
        return out;
    }

    /**
     * @param args the command line arguments
     * @throws java.io.IOException
     */
    public static void main(String[] args) throws IOException {
        // TODO code application logic here
        Rocchio rocchio = new Rocchio("/Applications/NetBeans/apache-tomcat-9.0.4/bin/ND_data_index_v3.0/");
        TermQuery query = new TermQuery(new Term(Indexer.TYPE, "pos1"));
//        rocchio.runRocchio(query);
//        Set<String> words = rocchio.printTerms(query);

//        query = new TermQuery(new Term(Indexer.TYPE, "pos2"));
////        rocchio.runRocchio(query);
//        words.addAll(rocchio.printTerms(query));
////        
//        query = new TermQuery(new Term(Indexer.TYPE, "pos3"));
////        rocchio.runRocchio(query);
//        words.addAll(rocchio.printTerms(query));
////        
        query = new TermQuery(new Term(Indexer.TYPE, "pos4"));
        rocchio.runRocchio(query);
//        words.addAll(rocchio.printTerms(query));
////        
//        query = new TermQuery(new Term(Indexer.TYPE, "pos5"));
////        rocchio.runRocchio(query);
//        words.addAll(rocchio.printTerms(query));
////        
//        query = new TermQuery(new Term(Indexer.TYPE, "pos6"));
////        rocchio.runRocchio(query);
//        words.addAll(rocchio.printTerms(query));
////        
//        query = new TermQuery(new Term(Indexer.TYPE, "pos7"));
////        rocchio.runRocchio(query);
//        words.addAll(rocchio.printTerms(query));
//        
//        query = new TermQuery(new Term(Indexer.TYPE, "pos8"));
//        rocchio.runRocchio(query);
//        words.addAll(rocchio.printTerms(query));
//        
//        query = new TermQuery(new Term(Indexer.TYPE, "pos9"));
////        rocchio.runRocchio(query);
//        words.addAll(rocchio.printTerms(query));
////        
//        query = new TermQuery(new Term(Indexer.TYPE, "pos10"));
////        rocchio.runRocchio(query);
//        words.addAll(rocchio.printTerms(query));

//        for(String token:words){
//            System.out.println(token);
//        }
    }

    @Override
    public Filter getOptimalFilter(TopDocs hits, SetEvaluation setEval, ScoringFunction sf) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
