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
package utoronto.ca.ir.search.gurobi;

import gurobi.GRB;
import gurobi.GRBEnv;
import gurobi.GRBException;
import gurobi.GRBLinExpr;
import gurobi.GRBModel;
import gurobi.GRBVar;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.DoubleStream;
import org.apache.lucene.document.Document;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.TopDocs;
import utoronto.ca.ir.evaluation.SetEvaluation;
import utoronto.ca.ir.evaluation.SetF1_Score;
import utoronto.ca.ir.evaluation.SetPrecision;
import utoronto.ca.ir.evaluation.SetRecall;
import utoronto.ca.ir.indexing.Indexer;
import utoronto.ca.ir.scoring.ScoringFunction;

/**
 * This method implements the Gurobi-based selector using keywords. It is based
 * on the Yihao's code, translated by Reda from Python to Java. Please contact
 * him for more information (Yihao Du
 * <duyihao@mie.utoronto.ca>).
 *
 * @author rbouadjenek
 */
public class GurobiSelectorKeyword extends GurobiSelector {

    public GurobiSelectorKeyword(IndexSearcher is, Map<String, Double> malicious) {
        super(is, malicious);
    }

    public GurobiSelectorKeyword(String indexDir, double rate_malicious) throws IOException {
        super(indexDir, rate_malicious);
    }

    /**
     * This methods implements the Keyword-based Gurobi search algorithm.
     *
     * @param hits
     * @param setEval
     * @param sf The scoring function being used, e.g., DetNoisyGroundTruth or
     * NoisyGroundTruth. See the package utoronto.ca.ir.scoring.
     * @return Optimal set given the parameters.
     * @throws Exception
     */
    @Override
    public Filter getOptimalFilter(TopDocs hits, SetEvaluation setEval, ScoringFunction sf) throws Exception {
        List<Document> docSet = orderList(TopDocs2List(hits), Indexer.DATE_STORE, ASC);
        /**
         * Initialization.
         */
        List<String>[] doc2keywords = new ArrayList[(int) hits.totalHits];
        List<String> topMITerms = getTopTermByFreq(hits, topTerm);
        for (int i = 0; i < hits.totalHits; i++) {
            Document doc = is.doc(hits.scoreDocs[i].doc);
            List<String> docKeywords = getDocKeywords(hits.scoreDocs[i].doc);
            docKeywords.retainAll(topMITerms);
            doc2keywords[i] = docKeywords;
        }

        return getOptimalFilter(docSet, doc2keywords, setEval, sf);
    }

    /**
     * This methods implements the Time-based Greedy search algorithm.
     *
     * @param list
     * @param doc2keywords
     * @param setEval
     * @param sf The scoring function being used, e.g., DetNoisyGroundTruth or
     * NoisyGroundTruth. See the package utoronto.ca.ir.scoring.
     * @return Optimal set given the parameters.
     * @throws Exception
     */
    public Filter getOptimalFilter(List<Document> list, List<String>[] doc2keywords, SetEvaluation setEval, ScoringFunction sf) throws Exception {
        if (setEval instanceof SetPrecision) {
            return precisionOptimization(list, sf, doc2keywords);
        } else if (setEval instanceof SetRecall) {
            return recallOptimization(list, sf, doc2keywords);
        } else if (setEval instanceof SetF1_Score) {
            return f1_ScoreOptimization(list, sf, doc2keywords);
        } else {
            return null;
        }
    }

    /**
     * This method implements Yihao's python code for precision with keywords
     * filter.
     *
     * @param list
     * @param sf
     * @param doc2keywords
     * @return
     * @throws Exception
     */
    public Filter precisionOptimization(List<Document> list, ScoringFunction sf, List<String>[] doc2keywords) throws Exception {
        /**
         * Mappings.
         */
        double s[] = new double[list.size()];
        double email[] = new double[list.size()];
        for (int i = 0; i < email.length; i++) {
            Document doc = list.get(i);
            s[i] = sf.getScore(doc.get(Indexer.MID));
            email[i] = i;

        }
        /**
         * Extract dictionary.
         */
        Set<String> dictSet = new HashSet<>();
        for (List<String> doc2keyword : doc2keywords) {
            dictSet.addAll(doc2keyword);
        }
        List<String> dictList = new ArrayList<>(dictSet);
        double[] dict = new double[dictSet.size()];
        for (int i = 0; i < dictSet.size(); i++) {
            dict[i] = i;
        }
        /**
         * PyGurobi translation starts here (Yihao's python code).
         */
        GRBEnv env = new GRBEnv();
        GRBModel model = new GRBModel(env);
        model.set(GRB.StringAttr.ModelName, "precision");
        /**
         * Lower and Upper bounds.
         */
        double[] lb_B = new double[email.length];
        Arrays.fill(lb_B, 0);
        double[] ub_B = new double[email.length];
        Arrays.fill(ub_B, 1);
        double[] ub_C = new double[email.length];
        Arrays.fill(ub_C, GRB.INFINITY);

        double[] lb_B_ = new double[dict.length];
        Arrays.fill(lb_B_, 0);
        double[] ub_B_ = new double[dict.length];
        Arrays.fill(ub_B_, 1);
        /**
         * Variable types.
         */
        char C[] = new char[email.length];
        Arrays.fill(C, GRB.CONTINUOUS);
        char B[] = new char[email.length];
        Arrays.fill(B, GRB.BINARY);

        char B_[] = new char[dict.length];
        Arrays.fill(B_, GRB.BINARY);

        /**
         * Variable names.
         */
        String nameW[] = new String[email.length];
        String nameI[] = new String[email.length];
        String[] nameIw = new String[dict.length];
        for (int i = 0; i < email.length; i++) {
            nameW[i] = "Weight[" + i + "]";
            nameI[i] = "Indication[" + i + "]";
        }
        for (int i = 0; i < dict.length; i++) {
            nameIw[i] = "word_Indication[" + i + "]";
        }

        /**
         * Create variables.
         */
//        w = model.addVars(Email, lb=0.0, ub =1.0, vtype='C', name = 'Weight')
        GRBVar[] w = model.addVars(lb_B, ub_B, email, C, nameW);
//        I = model.addVars(Email, lb=0.0, ub =1.0, vtype='B', name = 'Indication')
        GRBVar[] I = model.addVars(lb_B, ub_B, email, B, nameI);
//        u = model.addVar(lb=0.0, ub =1.0, vtype='C', name = 'Sum_Indication')
        GRBVar u = model.addVar(0, 1, 1, GRB.CONTINUOUS, "Sum_Indication");
        /**
         * Create keyword variables.
         */
//        Iw = model.addVars(dic, vtype='B', name = 'word_Indication')
        GRBVar[] Iw = model.addVars(lb_B_, ub_B_, dict, B_, nameIw);

        /**
         * Weight-Sum constraints.
         */
//        model.addConstr(quicksum(w[i] for i in range(10)) == 1.0, 'Sum(w[i]) == 1.0')
        GRBLinExpr exprConst = new GRBLinExpr();
        exprConst.addTerms(ub_B, w);
        model.addConstr(exprConst, GRB.EQUAL, 1, "Sum(w[i]) == 1.0");
        /**
         * Keyword constraints.
         */
        for (int i = 0; i < email.length; i++) {
//            model.addConstr(w[i] <= u, 'w[i] <= u')
            model.addConstr(w[i], GRB.LESS_EQUAL, u, "w[" + i + "] <= u");
//            model.addConstr(w[i] <= 1e4*I[i], 'w[i] <= M*I(i)')
            GRBLinExpr expr1 = new GRBLinExpr();
            expr1.addTerm(M, I[i]);
            model.addConstr(w[i], GRB.LESS_EQUAL, expr1, "w[" + i + "] <= M*I(" + i + ")");
//            model.addConstr(w[i] >= u-1e4*(1-I[i]),'w[i] >= u - M*[1-I(i)]')
            GRBLinExpr expr2 = new GRBLinExpr();
            expr2.addTerm(1, u);
            expr2.addConstant(-M);
            expr2.addTerm(M, I[i]);
            model.addConstr(w[i], GRB.GREATER_EQUAL, expr2, "w[" + i + "] >= u - M*[1-I(" + i + ")]");
//            model.addConstr(w[i] >= 0.0, 'Weight-positive')
            model.addConstr(w[i], GRB.GREATER_EQUAL, 0.0, "Weight-positive");

//            model.addGenConstrOr(I[i], [Iw[word] for word in E2words[i]], "keyword_Email_Con")
            GRBVar[] v = new GRBVar[doc2keywords[i].size()];
            for (int j = 0; j < doc2keywords[i].size(); j++) {
                int h = dictList.indexOf(doc2keywords[i].get(j));
                v[j] = Iw[h];
            }
            model.addGenConstrAnd(I[i], v, "keyword_Email_Con");
        }
        /**
         * Create objective function.
         */
        GRBLinExpr expr = new GRBLinExpr();
        expr.addTerms(s, w);
        model.setObjective(expr, GRB.MAXIMIZE);
        /**
         * Optimize the problem.
         */
        model.optimize();
//        model.write("./keyword-precision.lp");

        /**
         * Print solution.
         */
//        printSolution(model, w, I, Iw, u);
        List<String> keywords = new ArrayList<>();
        for (int i = 0; i < Iw.length; ++i) {
            if (Iw[i].get(GRB.DoubleAttr.X) == 0) {
                keywords.add(dictList.get(i));
            }
        }
        SetPrecision se = new SetPrecision(getIds(list));
        List<Document> outList = new ArrayList<>();
        for (int i = 0; i < I.length; i++) {
            if (I[i].get(GRB.DoubleAttr.X) == 1) {
                outList.add(list.get(i));
            }
        }
        Filter filter = new Filter(list, outList, se.getExpectedSetScore(getIds(outList), sf), keywords, -1, -1,
                Double.NaN,
                Double.NaN,
                Double.NaN,
                Double.NaN);

        return filter;
    }

    /**
     * This method implements Yihao's python code for recall with keyword
     * filter.
     *
     * @param email
     * @param s
     * @param doc2keywords
     * @return
     * @throws Exception
     */
    public Filter recallOptimization(List<Document> list, ScoringFunction sf, List<String>[] doc2keywords) throws Exception {
        /**
         * Mappings.
         */
        double s[] = new double[list.size()];
        double email[] = new double[list.size()];
        for (int i = 0; i < email.length; i++) {
            Document doc = list.get(i);
            s[i] = sf.getScore(doc.get(Indexer.MID));
            email[i] = i;

        }
        /**
         * Extract dictionary.
         */
        Set<String> dictSet = new HashSet<>();
        for (List<String> doc2keyword : doc2keywords) {
            dictSet.addAll(doc2keyword);
        }
        List<String> dictList = new ArrayList<>(dictSet);
        double[] dict = new double[dictSet.size()];
        for (int i = 0; i < dictSet.size(); i++) {
            dict[i] = i;
        }
        /**
         * PyGurobi translation starts here (Yihao's python code).
         */
        double u = 1 / DoubleStream.of(s).sum();
        GRBEnv env = new GRBEnv();
        GRBModel model = new GRBModel(env);
        model.set(GRB.StringAttr.ModelName, "recall");
        /**
         * Lower and Upper bounds.
         */
        double[] lb_B = new double[email.length];
        Arrays.fill(lb_B, 0);
        double[] ub_B = new double[email.length];
        Arrays.fill(ub_B, 1);
        double[] ub_C = new double[email.length];
        Arrays.fill(ub_C, GRB.INFINITY);

        double[] lb_B_ = new double[dict.length];
        Arrays.fill(lb_B_, 0);
        double[] ub_B_ = new double[dict.length];
        Arrays.fill(ub_B_, 1);
        /**
         * Variable types.
         */
        char C[] = new char[email.length];
        Arrays.fill(C, GRB.CONTINUOUS);
        char B[] = new char[email.length];
        Arrays.fill(B, GRB.BINARY);

        char B_[] = new char[dict.length];
        Arrays.fill(B_, GRB.BINARY);

        /**
         * Variable names.
         */
        String nameW[] = new String[email.length];
        String nameI[] = new String[email.length];
        String[] nameIw = new String[dict.length];
        for (int i = 0; i < email.length; i++) {
            nameW[i] = "Weight[" + i + "]";
            nameI[i] = "Indication[" + i + "]";
        }
        for (int i = 0; i < dict.length; i++) {
            nameIw[i] = "word_Indication[" + i + "]";
        }

        /**
         * Create variables.
         */
//        w = model.addVars(Email, lb=0.0, ub =1.0, vtype='C', name = 'Weight')
        GRBVar[] w = model.addVars(lb_B, ub_B, email, C, nameW);
//        I = model.addVars(Email, lb=0.0, ub =1.0, vtype='B', name = 'Indication')
        GRBVar[] I = model.addVars(lb_B, ub_B, email, B, nameI);
        /**
         * Create keyword variables.
         */
//        Iw = model.addVars(dic, vtype='B', name = 'word_Indication')
        GRBVar[] Iw = model.addVars(lb_B_, ub_B_, dict, B_, nameIw);

        for (int i = 0; i < email.length; i++) {
//            model.addConstr(w[i] <= u, 'w[i] <= u')
            model.addConstr(w[i], GRB.LESS_EQUAL, u, "w[" + i + "] <= u");
//            model.addConstr(w[i] <= 1e4*I[i], 'w[i] <= M*I(i)')
            GRBLinExpr expr1 = new GRBLinExpr();
            expr1.addTerm(M, I[i]);
            model.addConstr(w[i], GRB.LESS_EQUAL, expr1, "w[" + i + "] <= M*I(" + i + ")");
//            model.addConstr(w[i] >= u-1e4*(1-I[i]),'w[i] >= u - M*[1-I(i)]')
            GRBLinExpr expr2 = new GRBLinExpr();
            expr2.addConstant(u);
            expr2.addConstant(-M);
            expr2.addTerm(M, I[i]);
            model.addConstr(w[i], GRB.GREATER_EQUAL, expr2, "w[" + i + "] >= u - M*[1-I(" + i + ")]");
//            model.addConstr(w[i] >= 0.0, 'Weight-positive')
            model.addConstr(w[i], GRB.GREATER_EQUAL, 0.0, "Weight-positive");

//            model.addGenConstrOr(I[i], [Iw[word] for word in E2words[i]], "keyword_Email_Con")
            GRBVar[] v = new GRBVar[doc2keywords[i].size()];
            for (int j = 0; j < doc2keywords[i].size(); j++) {
                int h = dictList.indexOf(doc2keywords[i].get(j));
                v[j] = Iw[h];
            }
            model.addGenConstrAnd(I[i], v, "keyword_Email_Con");
        }
        /**
         * Create objective function.
         */
        GRBLinExpr expr = new GRBLinExpr();
        expr.addTerms(s, w);
        model.setObjective(expr, GRB.MAXIMIZE);
        /**
         * Optimize the problem.
         */
        model.optimize();
//        model.write("./keyword-recall.lp");

        /**
         * Print solution.
         */
        List<String> keywords = new ArrayList<>();
        for (int i = 0; i < Iw.length; ++i) {
            if (Iw[i].get(GRB.DoubleAttr.X) == 0) {
                keywords.add(dictList.get(i));
            }
        }
        SetPrecision se = new SetPrecision(getIds(list));
        List<Document> outList = new ArrayList<>();
        for (int i = 0; i < I.length; i++) {
            if (I[i].get(GRB.DoubleAttr.X) == 1) {
                outList.add(list.get(i));
            }
        }
        Filter filter = new Filter(list, outList, se.getExpectedSetScore(getIds(outList), sf), keywords, -1, -1,
                Double.NaN,
                Double.NaN,
                Double.NaN,
                Double.NaN);

        return filter;
    }

    /**
     * This method implements Yihao's python code for f1-score with keyword
     * filter.
     *
     * @param email
     * @param s
     * @param doc2keywords
     * @return
     * @throws Exception
     */
    public Filter f1_ScoreOptimization(List<Document> list, ScoringFunction sf, List<String>[] doc2keywords) throws Exception {
        /**
         * Mappings.
         */
        double s[] = new double[list.size()];
        double email[] = new double[list.size()];
        for (int i = 0; i < email.length; i++) {
            Document doc = list.get(i);
            s[i] = sf.getScore(doc.get(Indexer.MID));
            email[i] = i;

        }
        /**
         * Extract dictionary.
         */
        Set<String> dictSet = new HashSet<>();
        for (List<String> doc2keyword : doc2keywords) {
            dictSet.addAll(doc2keyword);
        }
        List<String> dictList = new ArrayList<>(dictSet);
        double[] dict = new double[dictSet.size()];
        for (int i = 0; i < dictSet.size(); i++) {
            dict[i] = i;
        }
        double c = DoubleStream.of(s).sum();
        /**
         * PyGurobi translation starts here (Yihao's python code).
         */
        GRBEnv env = new GRBEnv();
        GRBModel model = new GRBModel(env);
        model.set(GRB.StringAttr.ModelName, "f1-score");
        /**
         * Lower and Upper bounds.
         */
        double[] lb_B = new double[email.length];
        Arrays.fill(lb_B, 0);
        double[] ub_B = new double[email.length];
        Arrays.fill(ub_B, 1);
        double[] ub_C = new double[email.length];
        Arrays.fill(ub_C, GRB.INFINITY);

        double[] lb_B_ = new double[dict.length];
        Arrays.fill(lb_B_, 0);
        double[] ub_B_ = new double[dict.length];
        Arrays.fill(ub_B_, 1);
        /**
         * Variable types.
         */
        char C[] = new char[email.length];
        Arrays.fill(C, GRB.CONTINUOUS);
        char B[] = new char[email.length];
        Arrays.fill(B, GRB.BINARY);

        char B_[] = new char[dict.length];
        Arrays.fill(B_, GRB.BINARY);

        /**
         * Variable names.
         */
        String nameW[] = new String[email.length];
        String nameI[] = new String[email.length];
        String[] nameIw = new String[dict.length];
        for (int i = 0; i < email.length; i++) {
            nameW[i] = "Weight[" + i + "]";
            nameI[i] = "Indication[" + i + "]";
        }
        for (int i = 0; i < dict.length; i++) {
            nameIw[i] = "word_Indication[" + i + "]";
        }

        /**
         * Create variables.
         */
//        w = model.addVars(Email, lb=0.0, ub =1.0, vtype='C', name = 'Weight')
        GRBVar[] w = model.addVars(lb_B, ub_B, email, C, nameW);
//        I = model.addVars(Email, lb=0.0, ub =1.0, vtype='B', name = 'Indication')
        GRBVar[] I = model.addVars(lb_B, ub_B, email, B, nameI);
//        u = model.addVar(lb=0.0, ub =1.0, vtype='C', name = 'Sum_Indication')
        GRBVar u = model.addVar(0, 1, 1, GRB.CONTINUOUS, "Sum_Indication");
        /**
         * Create keyword variables.
         */
//        Iw = model.addVars(dic, vtype='B', name = 'word_Indication')
        GRBVar[] Iw = model.addVars(lb_B_, ub_B_, dict, B_, nameIw);

        /**
         * Weight-Sum constraints.
         */
//        model.addConstr(quicksum(w[i] for i in range(10))+u*C == 1.0, 'sum(w)+uC=1')
        GRBLinExpr exprConst = new GRBLinExpr();
        exprConst.addTerms(ub_B, w);
        exprConst.addTerm(c, u);
        model.addConstr(exprConst, GRB.EQUAL, 1, "sum(w[i])+uC=1.0");
        /**
         * Keyword constraints.
         */
        for (int i = 0; i < email.length; i++) {
//            model.addConstr(w[i] <= u, 'w[i] <= u')
            model.addConstr(w[i], GRB.LESS_EQUAL, u, "w[" + i + "]<=u");
//            model.addConstr(w[i] <= 1e4*I[i], 'w[i] <= M*I(i)')
            GRBLinExpr expr1 = new GRBLinExpr();
            expr1.addTerm(M, I[i]);
            model.addConstr(w[i], GRB.LESS_EQUAL, expr1, "w[" + i + "]<=M*I(" + i + ")");
//            model.addConstr(w[i] >= u-1e4*(1-I[i]),'w[i] >= u - M*[1-I(i)]')
            GRBLinExpr expr2 = new GRBLinExpr();
            expr2.addTerm(1, u);
            expr2.addConstant(-M);
            expr2.addTerm(M, I[i]);
            model.addConstr(w[i], GRB.GREATER_EQUAL, expr2, "w[" + i + "]>=u-M*[1-I(" + i + ")]");
//            model.addConstr(w[i] >= 0.0, 'Weight-positive')
            model.addConstr(w[i], GRB.GREATER_EQUAL, 0.0, "Weight-positive[" + i + "]");

//            model.addGenConstrOr(I[i], [Iw[word] for word in E2words[i]], "keyword_Email_Con")
            GRBVar[] v = new GRBVar[doc2keywords[i].size()];
            for (int j = 0; j < doc2keywords[i].size(); j++) {
                int h = dictList.indexOf(doc2keywords[i].get(j));
                v[j] = Iw[h];
            }
            model.addGenConstrAnd(I[i], v, "keyword_Email_Con[" + i + "]");
        }
        /**
         * Create objective function.
         */
        GRBLinExpr expr = new GRBLinExpr();
        expr.addTerms(s, w);
        model.setObjective(expr, GRB.MAXIMIZE);
        /**
         * Optimize the problem.
         */
        model.optimize();
//        model.write("./keyword-f1-score.lp");

        /**
         * Print solution.
         */
//        printSolution(model, w, I, Iw, u);
        List<String> keywords = new ArrayList<>();
        for (int i = 0; i < Iw.length; ++i) {
            if (Iw[i].get(GRB.DoubleAttr.X) == 0) {
                keywords.add(dictList.get(i));
            }
        }
        SetPrecision se = new SetPrecision(getIds(list));
        List<Document> outList = new ArrayList<>();
        for (int i = 0; i < I.length; i++) {
            if (I[i].get(GRB.DoubleAttr.X) == 1) {
                outList.add(list.get(i));
            }
        }
        Filter filter = new Filter(list, outList, se.getExpectedSetScore(getIds(outList), sf), keywords, -1, -1,
                Double.NaN,
                Double.NaN,
                Double.NaN,
                Double.NaN);

        return filter;
    }

    private static void printSolution(GRBModel model, GRBVar[] w,
            GRBVar[] I, GRBVar[] Iw, GRBVar u) throws GRBException {
        if (model.get(GRB.IntAttr.Status) == GRB.Status.OPTIMAL) {
            System.out.println("\nCost: " + model.get(GRB.DoubleAttr.ObjVal));
            System.out.println("\nw:");
            for (int i = 0; i < w.length; ++i) {
                System.out.println(w[i].get(GRB.StringAttr.VarName) + "= "
                        + w[i].get(GRB.DoubleAttr.X));

            }
            System.out.println("\nI:");
            for (int i = 0; i < I.length; ++i) {
                System.out.println(I[i].get(GRB.StringAttr.VarName) + "= "
                        + I[i].get(GRB.DoubleAttr.X));
            }
            System.out.println("\nIw:");
            for (int i = 0; i < Iw.length; ++i) {
                System.out.println(Iw[i].get(GRB.StringAttr.VarName) + "= "
                        + Iw[i].get(GRB.DoubleAttr.X));
            }
            System.out.println("");
            System.out.println(u.get(GRB.StringAttr.VarName) + "= " + u.get(GRB.DoubleAttr.X));
        } else {
            System.out.println("No solution");
        }
    }

    @Override
    public List<Filter> getTopFilters(TopDocs hits, SetEvaluation setEval, ScoringFunction sf, int k) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

//    /**
//     * @param args the command line arguments
//     * @throws java.lang.Exception
//     */
//    public static void main(String[] args) throws Exception {
//        // TODO code application logic here
//        GurobiSelectorKeyword selector = new GurobiSelectorKeyword("/Volumes/Macintosh HD/Users/rbouadjenek/Documents/AUI4IR_data/raw_enron_index_v1.0/", 5);
////        List<String> ids = selector.getData(100);
////        Query q = selector.getIdsFilter(ids);
////        TopDocs hits1 = selector.executeFilter(q);
////        SetEvaluation se = new SetSoftF1_Score(selector.getIds(hits1));
////        ScoringFunction sf = new DetNoisyGroundTruth(selector.malicious, 1);
////        long start = System.currentTimeMillis();
////        Query query = selector.getOptimalFilter(hits1, se, sf);
////        System.out.println(query);
////        long end = System.currentTimeMillis();
////        TopDocs hits2 = selector.executeFilter(query);
////        System.out.println("The size of the initial list is:" + hits1.totalHits + " and it has a SetEvaluation value= " + se.getSetScore(selector.getIds(hits1), sf) + ".");
////        System.out.println("The size of the list returned is: " + hits2.totalHits + " and it has a SetEvaluation value= " + se.getSetScore(selector.getIds(hits2), sf) + ".");
////        System.out.println("-------------------------------------------------------------------------");
////        long millis = (end - start);
////        System.out.println("The Combined Gurobi Keyword-based Algoritm took: " + Functions.getTimer(millis) + ".");
////        System.out.println("-------------------------------------------------------------------------");
//
//        double[] s = new double[]{0.0, 1.0, 1.0, 1.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0};
//        double email[] = new double[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
//        //1,2,3,4,7
//        List<String> l0 = Arrays.asList("y", "c", "t", "o", "f");
//        List<String> l1 = Arrays.asList("c", "k", "z", "d", "g");
//        List<String> l2 = Arrays.asList("i", "m", "e", "t", "v");
//        List<String> l3 = Arrays.asList("h", "c", "m", "w", "v");
//        List<String> l4 = Arrays.asList("p", "k", "l", "d", "x");
//        List<String> l5 = Arrays.asList("n", "c", "f", "l", "v");
//        List<String> l6 = Arrays.asList("b", "j", "e", "g", "n");
//        List<String> l7 = Arrays.asList("i", "x", "u", "g", "o");
//        List<String> l8 = Arrays.asList("q", "b", "e", "g", "w");
//        List<String> l9 = Arrays.asList("y", "c", "b", "o", "v");
//
//        List<List<String>> doc2keywords1 = new ArrayList<>();
//        doc2keywords1.add(l0);
//        doc2keywords1.add(l1);
//        doc2keywords1.add(l2);
//        doc2keywords1.add(l3);
//        doc2keywords1.add(l4);
//        doc2keywords1.add(l5);
//        doc2keywords1.add(l6);
//        doc2keywords1.add(l7);
//        doc2keywords1.add(l8);
//        doc2keywords1.add(l9);
//        List<String>[] doc2keywords2 = doc2keywords1.toArray(new List[0]);
////        selector.f1_ScoreOptimization(email, s, doc2keywords2);
//    }
}
