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
package utoronto.ca.ir.paper.evaluation;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import org.apache.lucene.document.Document;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import smile.clustering.Clustering;
import unimelb.edu.au.tools.Statistics;
import utoronto.ca.ir.evaluation.SetEvaluation;
import utoronto.ca.ir.evaluation.SetF1_Score;
import utoronto.ca.ir.evaluation.SetPrecision;
import utoronto.ca.ir.evaluation.SetRecall;
import utoronto.ca.ir.indexing.Indexer;
import utoronto.ca.ir.scoring.NoisyGroundTruth;
import utoronto.ca.ir.scoring.ScoringFunction;
import utoronto.ca.ir.search.SetSelector;
import static utoronto.ca.ir.search.SetSelector.ASC;
import static utoronto.ca.ir.search.SetSelector.DESC;
import utoronto.ca.ir.search.SetSelector.Filter;
import utoronto.ca.ir.search.clustering.XMeansFiltering;
import utoronto.ca.ir.search.bps.BPSSelector;
import utoronto.ca.ir.search.greedy.GreedySelector;
import utoronto.ca.ir.search.gurobi.GurobiSelectorAll;
import unimelb.edu.au.tools.Functions;

/**
 * This class implements all the evaluation used for the SIGIR 2018 paper.
 *
 * @author rbouadjenek
 */
public class PaperEvaluation {

//    double[] rate_malicious = {0.5, 1, 2, 3, 4};
    double[] rate_malicious = {0.5, 1, 2, 3, 4, 5, 10, 20, 30, 50};
    int[] size_data = {10, 20, 30, 50, 100, 150, 200, 300, 400, 500, 600, 700, 800, 900, 1000,
        2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 10000};
//    int[] rate_data = {600, 700, 800, 900, 1000};
//    int[] rate_data = {10,20,30,50,100,150};
    int z = 10;
    double[] lambdaVal = {0.6, 0.7, 0.8, 0.9, 1};
    TopDocs[][][] topDocs;
    NoisyGroundTruth[][] sf;
    public final IndexSearcher is;

    public PaperEvaluation(String indexDir, double[] rate_malicious) throws IOException, Exception {
        Directory dir = FSDirectory.open((new File(indexDir).toPath()));
        is = new IndexSearcher(DirectoryReader.open(dir));
//        this.lambda = lambda;
        this.rate_malicious = rate_malicious;
        sf = new NoisyGroundTruth[lambdaVal.length][rate_malicious.length];
        topDocs = new TopDocs[rate_malicious.length][size_data.length][z];
        for (int i = 0; i < rate_malicious.length; i++) {
            GreedySelector selector = new GreedySelector(indexDir, rate_malicious[i]);
            NoisyGroundTruth s1 = new NoisyGroundTruth(selector.malicious, -1);

            for (int j = 0; j < lambdaVal.length; j++) {
                double lambda = lambdaVal[j];
                NoisyGroundTruth s2 = s1.clone();
                s2.setLambda(lambda);
                sf[j][i] = s2;
            }
            for (int j = 0; j < z; j++) {
                selector.reshuffle();
                for (int l = 0; l < size_data.length; l++) {
//                    List<String> ids = selector.getData(size_data[l], rate_malicious[i]);
                    List<String> ids = selector.getData(size_data[l]);
                    Query q = selector.getIdsFilter(ids);
                    TopDocs hits = selector.executeFilter(q);
                    topDocs[i][l][j] = hits;
                }
            }
        }
    }

    public void runEval() throws IOException, Exception {
        for (int lam = 0; lam < lambdaVal.length; lam++) {
            double lambda = lambdaVal[lam];
//            if (lambda < 0.9  ) {
//                continue;
//            }
            for (int i = 0; i < rate_malicious.length; i++) {
                PrintWriter outWriterPerf = new PrintWriter(new FileOutputStream(
                        new File("performance_posrate_" + rate_malicious[i] + "_" + lambda + ".txt"),
                        true /* append = true */));
                PrintWriter outWriterTime = new PrintWriter(new FileOutputStream(
                        new File("time_posrate_" + rate_malicious[i] + "_" + lambda + ".txt"),
                        true /* append = true */));
                PrintWriter outWriterSolSize = new PrintWriter(new FileOutputStream(
                        new File("sol_size_posrate_" + rate_malicious[i] + "_" + lambda + ".txt"),
                        true /* append = true */));
//                outWriterPerf.println("#\tiniP\tiniR\tiniF1\tiniEF1\tdicMP\tdicMR\tdicMF1\tdicMeF1\tgrMP\tgrMR\tgrMF1\tgrMeF1\tguMP\tguMR\tguMF1\tguMeF1\txmeansMP\txmeansMR\txmeansMF1\txmeansMeF1");
//                outWriterPerf.flush();

                NoisyGroundTruth scoringfunction = sf[lam][i];
                for (int l = 0; l < size_data.length; l++) {
//                    if (lambda == 0.8 && size_data[l] <= 10) {
//                        continue;
//                    }

                    double[] ini_Precision = new double[z];
                    double[] ini_Recall = new double[z];
                    double[] ini_F1 = new double[z];
                    double[] ini_EF1 = new double[z];

                    double[] bps_Pecision = new double[z];
                    double[] bps_Recall = new double[z];
                    double[] bps_F1 = new double[z];
                    double[] bps_eF1 = new double[z];

                    double[] greedy_Precision = new double[z];
                    double[] greedy_Recall = new double[z];
                    double[] greedy_F1 = new double[z];
                    double[] greedy_eF1 = new double[z];

                    double[] gurobi_Precision = new double[z];
                    double[] gurobi_Recall = new double[z];
                    double[] gurobi_F1 = new double[z];
                    double[] gurobi_eF1 = new double[z];

                    double[] xmeans_Precision = new double[z];
                    double[] xmeans_Recall = new double[z];
                    double[] xmeans_F1 = new double[z];
                    double[] xmeans_eF1 = new double[z];

                    double[] bps_SolSize = new double[z];

                    double[] greedy_SolSize = new double[z];

                    double[] gurobi_SolSize = new double[z];

                    double[] xmeans_SolSize = new double[z];
                    /**
                     * Time complexity.
                     */
                    double[] bps_Time = new double[z];

                    double[] greedy_Time = new double[z];

                    double[] gurobi_Time = new double[z];

                    double[] xmeans_Time = new double[z];

                    for (int j = 0; j < z; j++) {
                        long start = System.currentTimeMillis();
                        System.out.println("******************************************************");
                        System.out.println("**[lambda = " + lambda + " -> " + scoringfunction.getLambda() + ", rate_malicious = " + rate_malicious[i] + ", rate_data = " + size_data[l] + ", j = " + j + "]**");
                        System.out.println("******************************************************");

                        /**
                         * Initial set.
                         */
                        SetSelector selector = new BPSSelector(is, scoringfunction.malicious);
                        TopDocs hits1 = topDocs[i][l][j];
                        SetEvaluation sePrecision = new SetPrecision(selector.getIds(hits1));
                        SetEvaluation seRecall = new SetRecall(selector.getIds(hits1), scoringfunction);
                        SetEvaluation seF1_score = new SetF1_Score(selector.getIds(hits1), scoringfunction);
                        ini_Precision[j] = sePrecision.getRealSetScore(selector.getIds(hits1), scoringfunction); //initial perf.
                        ini_Recall[j] = seRecall.getRealSetScore(selector.getIds(hits1), scoringfunction); //initial perf.
                        ini_F1[j] = seF1_score.getRealSetScore(selector.getIds(hits1), scoringfunction); //initial perf.
                        ini_EF1[j] = seF1_score.getExpectedSetScore(selector.getIds(hits1), scoringfunction); //initial perf.

                        /**
                         * BPS algorithm
                         */
                        System.out.println("********************************");
                        System.out.println("BPSSelector");
                        System.out.println("********************************");
                        selector = new BPSSelector(is, scoringfunction.malicious);
                        Result result = executeTest(selector, hits1, seF1_score, scoringfunction);
                        bps_Time[j] = result.time;
                        bps_Pecision[j] = result.p;
                        bps_Recall[j] = result.r;
                        bps_F1[j] = result.f1;
                        bps_eF1[j] = result.ef1;
                        bps_SolSize[j] = result.sizeResult;

                        /**
                         * Greedy algorithm.
                         */
                        System.out.println("********************************");
                        System.out.println("GreedySelector");
                        System.out.println("********************************");
                        selector = new GreedySelector(is, scoringfunction.malicious);
                        result = executeTest(selector, hits1, seF1_score, scoringfunction);
                        greedy_Time[j] = result.time;
                        greedy_Precision[j] = result.p;
                        greedy_Recall[j] = result.r;
                        greedy_F1[j] = result.f1;
                        greedy_eF1[j] = result.ef1;
                        greedy_SolSize[j] = result.sizeResult;

                        /**
                         * MILP solution.
                         */
                        if (size_data[l] <= 150) {
                            System.out.println("********************************");
                            System.out.println("MILP");
                            System.out.println("********************************");
                            selector = new GurobiSelectorAll(is, scoringfunction.malicious);
                            result = executeTest(selector, hits1, seF1_score, scoringfunction);
                            gurobi_Time[j] = result.time;
                            gurobi_Precision[j] = result.p;
                            gurobi_Recall[j] = result.r;
                            gurobi_F1[j] = result.f1;
                            gurobi_eF1[j] = result.ef1;
                            gurobi_SolSize[j] = result.sizeResult;
                        } else {
                            gurobi_Time[j] = Double.NaN;
                            gurobi_Precision[j] = Double.NaN;
                            gurobi_Recall[j] = Double.NaN;
                            gurobi_F1[j] = Double.NaN;
                            gurobi_eF1[j] = Double.NaN;
                            gurobi_SolSize[j] = Double.NaN;
                        }

                        /**
                         * XMeans algorithm
                         */
                        if (size_data[l] <= 10000) {
                            System.out.println("********************************");
                            System.out.println("XMeans");
                            System.out.println("********************************");
                            List<Document> list = selector.TopDocs2List(hits1);
                            Double minTime = Double.parseDouble(selector.orderList(list, Indexer.DATE_STORE, ASC).get(0).get(Indexer.DATE_STORE));
                            Double maxTime = Double.parseDouble(selector.orderList(list, Indexer.DATE_STORE, DESC).get(0).get(Indexer.DATE_STORE));
                            double maxDistTime = maxTime - minTime;
                            double maxPositionTime = 0;
                            for (Document doc1 : list) {
                                double[] v1 = new double[2];
                                v1[0] = Double.parseDouble(doc1.get(Indexer.POS_X));
                                v1[1] = Double.parseDouble(doc1.get(Indexer.POS_Y));
                                for (Document doc2 : list) {
                                    double[] v2 = new double[2];
                                    v2[0] = Double.parseDouble(doc2.get(Indexer.POS_X));
                                    v2[1] = Double.parseDouble(doc2.get(Indexer.POS_Y));
                                    double d = Clustering.EuclideanDistance(v1, v2);
                                    if (maxPositionTime < d) {
                                        maxPositionTime = d;
                                    }

                                }
                            }

                            selector = new XMeansFiltering(is, scoringfunction.malicious, "boolean", 2, 100, 1, 1, 1, maxDistTime, maxPositionTime);// to dertermine
                            result = executeTest(selector, hits1, seF1_score, scoringfunction);
                            xmeans_Time[j] = result.time;
                            xmeans_Precision[j] = result.p;
                            xmeans_Recall[j] = result.r;
                            xmeans_F1[j] = result.f1;
                            xmeans_eF1[j] = result.ef1;
                            xmeans_SolSize[j] = result.sizeResult;
                        } else {
                            xmeans_Time[j] = Double.NaN;
                            xmeans_Precision[j] = Double.NaN;
                            xmeans_Recall[j] = Double.NaN;
                            xmeans_F1[j] = Double.NaN;
                            xmeans_eF1[j] = Double.NaN;
                            xmeans_SolSize[j] = Double.NaN;
                        }

                        long end = System.currentTimeMillis();
                        long millis = (end - start);
                        System.out.println("The iteration took took: " + Functions.getTimer(millis) + ".");
                    }
                    StringBuilder sbPerf = new StringBuilder();
                    StringBuilder sbTime = new StringBuilder();
                    StringBuilder sbSolSize = new StringBuilder();

                    sbPerf.append(size_data[l]).
                            append("\t").append(Statistics.getArithmeticMean(ini_Precision)).
                            append("\t").append(Statistics.getConfidenceInterval95(ini_Precision)).
                            append("\t").append(Statistics.getArithmeticMean(ini_Recall)).
                            append("\t").append(Statistics.getConfidenceInterval95(ini_Recall)).
                            append("\t").append(Statistics.getArithmeticMean(ini_F1)).
                            append("\t").append(Statistics.getConfidenceInterval95(ini_F1)).
                            append("\t").append(Statistics.getArithmeticMean(ini_EF1)).
                            append("\t").append(Statistics.getConfidenceInterval95(ini_EF1)).
                            append("\t").append(Statistics.getArithmeticMean(bps_Pecision)).
                            append("\t").append(Statistics.getConfidenceInterval95(bps_Pecision)).
                            append("\t").append(Statistics.getArithmeticMean(bps_Recall)).
                            append("\t").append(Statistics.getConfidenceInterval95(bps_Recall)).
                            append("\t").append(Statistics.getArithmeticMean(bps_F1)).
                            append("\t").append(Statistics.getConfidenceInterval95(bps_F1)).
                            append("\t").append(Statistics.getArithmeticMean(bps_eF1)).
                            append("\t").append(Statistics.getConfidenceInterval95(bps_eF1)).
                            append("\t").append(Statistics.getArithmeticMean(greedy_Precision)).
                            append("\t").append(Statistics.getConfidenceInterval95(greedy_Precision)).
                            append("\t").append(Statistics.getArithmeticMean(greedy_Recall)).
                            append("\t").append(Statistics.getConfidenceInterval95(greedy_Recall)).
                            append("\t").append(Statistics.getArithmeticMean(greedy_F1)).
                            append("\t").append(Statistics.getConfidenceInterval95(greedy_F1)).
                            append("\t").append(Statistics.getArithmeticMean(greedy_eF1)).
                            append("\t").append(Statistics.getConfidenceInterval95(greedy_eF1)).
                            append("\t").append(Statistics.getArithmeticMean(gurobi_Precision)).
                            append("\t").append(Statistics.getConfidenceInterval95(gurobi_Precision)).
                            append("\t").append(Statistics.getArithmeticMean(gurobi_Recall)).
                            append("\t").append(Statistics.getConfidenceInterval95(gurobi_Recall)).
                            append("\t").append(Statistics.getArithmeticMean(gurobi_F1)).
                            append("\t").append(Statistics.getConfidenceInterval95(gurobi_F1)).
                            append("\t").append(Statistics.getArithmeticMean(gurobi_eF1)).
                            append("\t").append(Statistics.getConfidenceInterval95(gurobi_eF1)).
                            append("\t").append(Statistics.getArithmeticMean(xmeans_Precision)).
                            append("\t").append(Statistics.getConfidenceInterval95(xmeans_Precision)).
                            append("\t").append(Statistics.getArithmeticMean(xmeans_Recall)).
                            append("\t").append(Statistics.getConfidenceInterval95(xmeans_Recall)).
                            append("\t").append(Statistics.getArithmeticMean(xmeans_F1)).
                            append("\t").append(Statistics.getConfidenceInterval95(xmeans_F1)).
                            append("\t").append(Statistics.getArithmeticMean(xmeans_eF1)).
                            append("\t").append(Statistics.getConfidenceInterval95(xmeans_eF1));

                    sbTime.append(size_data[l]).
                            append("\t").append(Statistics.getArithmeticMean(bps_Time)).
                            append("\t").append(Statistics.getConfidenceInterval95(bps_Time)).
                            append("\t").append(Statistics.getArithmeticMean(greedy_Time)).
                            append("\t").append(Statistics.getConfidenceInterval95(greedy_Time)).
                            append("\t").append(Statistics.getArithmeticMean(gurobi_Time)).
                            append("\t").append(Statistics.getConfidenceInterval95(gurobi_Time)).
                            append("\t").append(Statistics.getArithmeticMean(xmeans_Time)).
                            append("\t").append(Statistics.getConfidenceInterval95(xmeans_Time));

                    sbSolSize.append(size_data[l]).
                            append("\t").append(Statistics.getArithmeticMean(bps_SolSize)).
                            append("\t").append(Statistics.getConfidenceInterval95(bps_SolSize)).
                            append("\t").append(Statistics.getArithmeticMean(greedy_SolSize)).
                            append("\t").append(Statistics.getConfidenceInterval95(greedy_SolSize)).
                            append("\t").append(Statistics.getArithmeticMean(gurobi_SolSize)).
                            append("\t").append(Statistics.getConfidenceInterval95(gurobi_SolSize)).
                            append("\t").append(Statistics.getArithmeticMean(xmeans_SolSize)).
                            append("\t").append(Statistics.getConfidenceInterval95(xmeans_SolSize));

                    outWriterPerf.println(sbPerf.toString());
                    outWriterPerf.flush();
                    outWriterTime.println(sbTime.toString());
                    outWriterTime.flush();
                    outWriterSolSize.println(sbSolSize.toString());
                    outWriterSolSize.flush();
                }
                outWriterPerf.close();
                outWriterTime.close();
                outWriterSolSize.close();
            }
        }
    }

    public Result executeTest(SetSelector selector, TopDocs hits, SetEvaluation seF1_score, ScoringFunction sf) throws Exception {
        SetEvaluation sePrecision = new SetPrecision(seF1_score.docSet);
        SetEvaluation seRecall = new SetRecall(seF1_score.docSet, sf);
        SetEvaluation seF1_score2 = new SetF1_Score(seF1_score.docSet, sf);
        ScoringFunction sf2 = sf.clone();

        long start = System.currentTimeMillis();

        Filter f = selector.getTopFilters(hits, seF1_score, sf, 1).get(0);

        long end = System.currentTimeMillis();
        long millis = (end - start);

        double p = sePrecision.getRealSetScore(selector.getIds(f.getOutList()), sf2);
        double r = seRecall.getRealSetScore(selector.getIds(f.getOutList()), sf2);
        double f1 = seF1_score2.getRealSetScore(selector.getIds(f.getOutList()), sf2);
        double ef1 = seF1_score2.getExpectedSetScore(selector.getIds(f.getOutList()), sf2);
        return new Result(p, r, f1, ef1, millis, f.getOutList().size());
    }

    public class Result {

        long time;
        double p;
        double r;
        double f1;
        double ef1;
        int sizeResult;

        public Result(double p, double r, double f1, double ef1, long time, int sizeResult) {
            this.time = time;
            this.p = p;
            this.r = r;
            this.f1 = f1;
            this.ef1 = ef1;
            this.sizeResult = sizeResult;
        }

    }

    /**
     * @param args the command line arguments
     * @throws java.io.IOException
     */
    public static void main(String[] args) throws IOException, Exception {
        // TODO code application logic here
        if (args.length == 0) {
            args = new String[2];
            args[0] = "/Users/rbouadjenek/Documents/AUI4IR_data/raw_twitter_index_v2.0/";
            args[1] = "50";
//            args[2] = "0.7";
        }

        double[] rate_malicious = new double[args.length - 1];
        for (int i = 1; i < args.length; i++) {
            rate_malicious[i - 1] = Double.parseDouble(args[i]);
        }
        PaperEvaluation pe = new PaperEvaluation(args[0], rate_malicious);
        long start = System.currentTimeMillis();
        pe.runEval();
        long end = System.currentTimeMillis();
        long millis = (end - start);
        System.out.println("The evaluation took: " + Functions.getTimer(millis) + ".");

    }

}
