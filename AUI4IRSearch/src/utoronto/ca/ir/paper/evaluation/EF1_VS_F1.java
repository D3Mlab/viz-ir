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
import utoronto.ca.ir.evaluation.SetEvaluation;
import utoronto.ca.ir.evaluation.SetF1_Score;
import utoronto.ca.ir.evaluation.SetPrecision;
import utoronto.ca.ir.evaluation.SetRecall;
import utoronto.ca.ir.scoring.NoisyGroundTruth;
import utoronto.ca.ir.scoring.ScoringFunction;
import utoronto.ca.ir.search.SetSelector;
import utoronto.ca.ir.search.bps.BPSSelector;
import utoronto.ca.ir.search.greedy.GreedySelector;
import utoronto.ca.ir.search.gurobi.GurobiSelectorAll;
import unimelb.edu.au.tools.Functions;

/**
 * This class implements all the evaluation used for the SIGIR 2018 paper.
 *
 * @author rbouadjenek
 */
public class EF1_VS_F1 {

//    double[] rate_malicious = {0.5, 1, 2, 3, 4};
    double[] rate_malicious = {0.5, 1, 2, 3, 4, 5, 10, 20, 30, 50};
    int[] rate_data = {10, 20, 30, 50, 100, 150};
//    int[] rate_data = {600, 700, 800, 900, 1000};
//    int[] rate_data = {10,20,30,50,100,150};
    int z = 10;
    double[] lambdaVal = {0.6, 0.7, 0.8, 0.9, 1};
    TopDocs[][][] topDocs = new TopDocs[rate_malicious.length][rate_data.length][z];
    NoisyGroundTruth[][] sf;
    public final IndexSearcher is;

    public EF1_VS_F1(String indexDir, String sfType, double[] rate_malicious) throws IOException, Exception {
        Directory dir = FSDirectory.open((new File(indexDir).toPath()));
        is = new IndexSearcher(DirectoryReader.open(dir));
//        this.lambda = lambda;
        this.rate_malicious = rate_malicious;
        sf = new NoisyGroundTruth[lambdaVal.length][rate_malicious.length];
        for (int i = 0; i < rate_malicious.length; i++) {
            GreedySelector selector = new GreedySelector(indexDir, rate_malicious[i]);
            NoisyGroundTruth s1;
            if (sfType.toLowerCase().startsWith("det")) {
                System.out.println("DetNoisyGroundTruth");
                s1 = new NoisyGroundTruth(selector.malicious, -1);
            } else {
                System.out.println("NoisyGroundTruth");
                s1 = new NoisyGroundTruth(selector.malicious, -1);
            }
            for (int j = 0; j < lambdaVal.length; j++) {
                double lambda = lambdaVal[j];
                NoisyGroundTruth s2 = (NoisyGroundTruth) s1.clone();
                s2.setLambda(lambda);
                sf[j][i] = s2;
            }
            for (int j = 0; j < z; j++) {
                selector.reshuffle();
                for (int l = 0; l < rate_data.length; l++) {
                    Query q = selector.getIdsFilter(selector.getData(rate_data[l]));
                    TopDocs hits = selector.executeFilter(q);
                    topDocs[i][l][j] = hits;
                }
            }
        }
    }

    public void runEval() throws IOException, Exception {
        for (int lam = 0; lam < lambdaVal.length; lam++) {
            double lambda = lambdaVal[lam];
            PrintWriter outWriterPerf = new PrintWriter("performance_" + lambda + ".txt");
            for (int i = 0; i < rate_malicious.length; i++) {
                NoisyGroundTruth scoringfunction = sf[lam][i];
                for (int l = 0; l < rate_data.length; l++) {
                    double[] guMF1 = new double[z];
                    for (int j = 0; j < z; j++) {
                        long start = System.currentTimeMillis();
                        System.out.println("***************************");
                        System.out.println("**[lambda= " + lambda + "->" + scoringfunction.getLambda() + ",rate_malicious=" + rate_malicious[i] + ", rate_data=" + rate_data[l] + ", j=" + j + "]**");
                        System.out.println("***************************");
                        SetSelector selector = new BPSSelector(is, scoringfunction.malicious);
                        TopDocs hits1 = topDocs[i][l][j];
                        SetEvaluation seF1_score = new SetF1_Score(selector.getIds(hits1), scoringfunction);
                        selector = new GurobiSelectorAll(is, scoringfunction.malicious);
                        Result result = executeTest(selector, hits1, seF1_score, scoringfunction);
                        guMF1[j] = result.f1;
                        long end = System.currentTimeMillis();
                        long millis = (end - start);
                        System.out.println("The iteration took took: " + Functions.getTimer(millis) + ".");
                        StringBuilder sbPerf = new StringBuilder();
                        sbPerf.append(result.f1);
                        outWriterPerf.println(sbPerf.toString());
                        outWriterPerf.flush();
                    }
                }
            }
            outWriterPerf.close();
        }
    }

    public Result executeTest(SetSelector selector, TopDocs hits, SetEvaluation seF1_score, ScoringFunction sf) throws Exception {
        long start = System.currentTimeMillis();
        List<Document> list = selector.getOptimalFilter(hits, seF1_score, sf).getOutList();
        long end = System.currentTimeMillis();
        long millis = (end - start);

        SetEvaluation sePrecision = new SetPrecision(seF1_score.docSet);
        SetEvaluation seRecall = new SetRecall(seF1_score.docSet, sf);

        double p = sePrecision.getRealSetScore(selector.getIds(list), sf); // greedy position perf.
        double r = seRecall.getRealSetScore(selector.getIds(list), sf); // greedy position perf.
        double f1 = seF1_score.getRealSetScore(selector.getIds(list), sf); // greedy position perf.
        double ef1 = seF1_score.getExpectedSetScore(selector.getIds(list), sf); // greedy position perf.
        return new Result(p, r, f1, ef1, millis, list.size());
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
            args = new String[3];
            args[0] = "/Volumes/Macintosh HD/Users/rbouadjenek/Documents/AUI4IR_data/raw_enron_index_v1.0/";
            args[1] = "noisy";
            args[2] = "0.6";
        }

        double[] rate_malicious = new double[args.length - 2];
        for (int i = 2; i < args.length; i++) {
            rate_malicious[i - 2] = Double.parseDouble(args[i]);
        }
        EF1_VS_F1 pe = new EF1_VS_F1(args[0], args[1], rate_malicious);
        long start = System.currentTimeMillis();
        pe.runEval();
        long end = System.currentTimeMillis();
        long millis = (end - start);
        System.out.println("The evaluation took: " + Functions.getTimer(millis) + ".");

    }

}
