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
package utoronto.ca.ir.search.clustering;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.lucene.document.Document;
import org.apache.lucene.search.BooleanClause;
import org.apache.lucene.search.BooleanQuery;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.TopDocs;
import smile.clustering.RelevanceScoring;
import static smile.clustering.RelevanceScoring.*;
import smile.clustering.XMeans;
import utoronto.ca.ir.evaluation.SetEvaluation;
import utoronto.ca.ir.indexing.Indexer;
import utoronto.ca.ir.scoring.ScoringFunction;
import utoronto.ca.ir.search.SetSelector;
import smile.math.Math;
import utoronto.ca.ir.evaluation.SetF1_Score;

/**
 * This class implements the XMeans algorithm for filter selection.
 *
 * @author reda
 */
public class XMeansFiltering extends SetSelector {

    final double alpha;
    final double beta;
    final double gamma;
    final double maxDistTime;
    final double maxDistPosition;
    final int kmin;
    final int kmax;
    public final RelevanceScoring scoring;

    public XMeansFiltering(IndexSearcher is, Map<String, Double> malicious, String scoring, int kmin, int kmax, double alpha, double beta, double gamma, double maxDistTime, double maxDistPosition) throws IOException {
        super(is, malicious);
        if (scoring.equals("tf")) {
            this.scoring = TF;
        } else if (scoring.equals("tfidf")) {
            this.scoring = TFIDF;
        } else {
            this.scoring = BOOLEAN;
        }
        this.kmin = kmin;
        this.kmax = kmax;
        this.alpha = alpha;
        this.beta = beta;
        this.gamma = gamma;
        this.maxDistTime = maxDistTime;
        this.maxDistPosition = maxDistPosition;
    }

    public XMeansFiltering(String indexDir, String scoring, int kmin, int kmax, double alpha, double beta, double gamma, double maxDistTime, double maxDistPosition) throws IOException {
        super(indexDir);
        if (scoring.equals("tf")) {
            this.scoring = TF;
        } else if (scoring.equals("tfidf")) {
            this.scoring = TFIDF;
        } else {
            this.scoring = BOOLEAN;
        }
        this.kmin = kmin;
        this.kmax = kmax;
        this.alpha = alpha;
        this.beta = beta;
        this.gamma = gamma;
        this.maxDistTime = maxDistTime;
        this.maxDistPosition = maxDistPosition;
    }

    @Override
    public List<Filter> getTopFilters(TopDocs hits, SetEvaluation setEval, ScoringFunction sf, int k) throws Exception {
        List<Filter> filters = new ArrayList<>();
        double[][] data = TopDocs2Array(hits, scoring);
        XMeans xmeans = new XMeans(data, kmin, kmax, alpha, beta, gamma, maxDistTime, maxDistPosition);
        System.out.println("*********************");
        System.out.println("Num clusters: " + xmeans.getNumClusters());
        System.out.println("*********************");

        for (int i = 0; i < xmeans.getNumClusters(); i++) {
            System.out.print(xmeans.getClusterSize()[i] + ", ");
        }
        System.out.println("");
//
//        System.out.println("*******************");
//        for (int i = 0; i < xmeans.getClusterLabel().length; i++) {
//            System.out.println(data[i][1] + " " + data[i][2] + " " + xmeans.getClusterLabel()[i]);
//            System.out.println((data[i][0] - 1356998401000L) / (1420070341000L - 1356998401000L) + " 0 " + xmeans.getClusterLabel()[i]);
//        }

        List<List<Document>> clusters = new ArrayList<>();
        for (int i = 0; i < xmeans.getNumClusters(); i++) {
            clusters.add(new ArrayList<>());
        }

        int i = 0;
        for (Document doc : TopDocs2List(hits)) {
            clusters.get(xmeans.getClusterLabel()[i]).add(doc);
            i++;
        }
        /**
         * Ranking the clusters using setEval and scoring function.
         */
        clusters.sort((List<Document> c1, List<Document> c2) -> {
            try {
                double v1 = setEval.getExpectedSetScore(getIds(c1), sf);
                double v2 = setEval.getExpectedSetScore(getIds(c2), sf);
                return Double.compare(v2, v1);
            } catch (Exception ex) {
                Logger.getLogger(XMeansFiltering.class.getName()).log(Level.SEVERE, null, ex);
                return -1;
            }
        });
        k = Math.min(k, clusters.size());
        for (i = 0; i < k; i++) {
            List<Document> list = clusters.get(i);
            if (list.isEmpty()) {
                continue;
            }
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
            Filter filter = new Filter(TopDocs2List(hits), list, performance, null, s, e, xmin, xmax, ymin, ymax);
            filters.add(filter);
        }

        return filters;
//        return null;
    }

    @Override
    public Filter getOptimalFilter(TopDocs hits, SetEvaluation setEval, ScoringFunction sf) throws Exception {
        return getTopFilters(hits, setEval, sf, kmin).get(0); //To change body of generated methods, choose Tools | Templates.
    }

    /**
     * @param args the command line arguments
     * @throws java.io.IOException
     */
    public static void main(String[] args) throws IOException, Exception {
        // TODO code application logic here
        if (args.length == 0) {
            args = new String[3];
            args[0] = "";
        }
//        double[][] data = new double[999][5];
        XMeansFiltering selector = new XMeansFiltering("/media/Storage/reda/netbeans-8.2/apache-tomcat-9.0.8/bin/ND_data_index_v6.1/", "boolean", 2, 20, 0.00, 1.0, 0., (1420070341000L - 1356998401000L), 57.4521784031653);
        BooleanQuery.Builder bqFinal = new BooleanQuery.Builder();
        String start = "2013-01-01", end = "2015-01-01";

        Query timeFilter = selector.getTimeFilter(start, end);
        bqFinal.add(timeFilter, BooleanClause.Occur.FILTER);

        bqFinal.add(selector.getKeywordsFilter("flood tornado drought"), BooleanClause.Occur.MUST);
        System.out.println("Query: " + bqFinal.build());
        TopDocs hits = selector.is.search(bqFinal.build(), 1000);

//        int i = 0;
//        for (Document doc : selector.TopDocs2List(hits)) {
//            double[] vectorA_Pos = new double[2];
//            vectorA_Pos[0] = Double.parseDouble(doc.get(Indexer.POS_X));
//            vectorA_Pos[1] = Double.parseDouble(doc.get(Indexer.POS_Y));
//            if (!check(vectorA_Pos)) {
//                continue;
//            }
//            data[i][0] = Math.random();
//            
//            data[i][1] = vectorA_Pos[1];
//            data[i][2] = vectorA_Pos[0];
//            
//            data[i][3] = Math.random();
//            data[i][4] = Math.random();
////            System.out.println(vectorA_Pos[1]+" "+vectorA_Pos[0]);
//            i++;
//        }
//        KMeans kmeans = new KMeans(data,6, 0, 1, 0);
//        System.out.println(kmeans.getNumClusters());
//        for (i = 0; i < kmeans.getClusterLabel().length; i++) {
//            System.out.println(data[i][1] + " " + data[i][2] + " " + kmeans.getClusterLabel()[i]);
//        }
        System.out.println("Hits= " + hits.totalHits);
        ScoringFunction sf = new ScoringFunction(selector.getYBasedOnHits(hits, 0.9));
        SetF1_Score se = new SetF1_Score(selector.getIds(hits), sf);
        List<Filter> filters;
        if (hits.totalHits > 0) {
            filters = selector.getTopFilters(hits, se, sf, 6);
//            System.out.println(filters.size());
        }
    }

}
