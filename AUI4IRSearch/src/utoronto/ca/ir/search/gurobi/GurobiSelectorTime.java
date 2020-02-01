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
import java.util.Collections;
import java.util.List;
import java.util.Map;
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
 * This method implements the Gurobi-based selector using time. It is based on
 * the Yihao's code, translated by Reda from Python to Java. Please contact him
 * for more information (Yihao Du
 * <duyihao@mie.utoronto.ca>).
 *
 * @author rbouadjenek
 */
public class GurobiSelectorTime extends GurobiSelector {

    public GurobiSelectorTime(IndexSearcher is, Map<String, Double> malicious) {
        super(is, malicious);
    }

    public GurobiSelectorTime(String indexDir, double rate_malicious) throws IOException {
        super(indexDir, rate_malicious);
    }

    /**
     * This methods implements the Time-based Greedy search algorithm.
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
        if (setEval instanceof SetPrecision) {
            return precisionOptimization(docSet, sf);
        }
        if (setEval instanceof SetRecall) {
            return recallOptimization(docSet, sf);
        }
        if (setEval instanceof SetF1_Score) {
            return f1_ScoreOptimization(docSet, sf);
        } else {
            return null;
        }
    }

    /**
     * This method implements Yihao's python code for precision with time
     * filter.
     *
     * @param list
     * @param sf
     * @return
     * @throws Exception
     */
    public Filter precisionOptimization(List<Document> list, ScoringFunction sf) throws Exception {
        /**
         * Initialization.
         */
        double score[] = new double[list.size()];
        double email[] = new double[list.size()];
        Long time[] = new Long[list.size()];
        for (int i = 0; i < email.length; i++) {
            score[i] = sf.getScore(list.get(i).get(Indexer.MID));
            email[i] = i;
            time[i] = Long.parseLong(list.get(i).get(Indexer.DATE_STORE));
        }

        Integer[] t = new Integer[time.length];
        for (int i = 0; i < t.length; i++) {
            t[i] = i;
        }
        /**
         * PyGurobi translation starts here (Yihao code).
         */
        GRBEnv env = new GRBEnv();
        GRBModel model = new GRBModel(env);
        model.set(GRB.StringAttr.ModelName, "precision");
        /**
         * Lower and Upper bounds.
         */
        double[] lb = new double[email.length];
        Arrays.fill(lb, 0);
        double[] ub_B = new double[email.length];
        Arrays.fill(ub_B, 1);
        double[] ub_C = new double[email.length];
        Arrays.fill(ub_C, GRB.INFINITY);

        /**
         * Variable types.
         */
        char C[] = new char[email.length];
        Arrays.fill(C, GRB.CONTINUOUS);
        char B[] = new char[email.length];
        Arrays.fill(B, GRB.BINARY);

        /**
         * Variable names.
         */
        String nameW[] = new String[email.length];
//        Arrays.fill(nameW, "Weight");
        String nameI[] = new String[email.length];
//        Arrays.fill(nameI, "Indication");
        String isVar[] = new String[email.length];
//        Arrays.fill(isVar, "Is-Var");
        String ieVar[] = new String[email.length];
//        Arrays.fill(ieVar, "Ie-Var");
        for (int i = 0; i < email.length; i++) {
            nameW[i] = "Weight[" + i + "]";
            nameI[i] = "Indication[" + i + "]";
            isVar[i] = "Is-Var[" + i + "]";
            ieVar[i] = "Ie-Var[" + i + "]";
        }

        /**
         * Create variables.
         */
//        w = model.addVars(Email, lb=0.0, ub =1.0, vtype='C', name = 'Weight')
        GRBVar[] w = model.addVars(lb, ub_B, email, C, nameW);
//        I = model.addVars(Email, lb=0.0, ub =1.0, vtype='B', name = 'Indication')
        GRBVar[] I = model.addVars(lb, ub_B, email, B, nameI);
//        u = model.addVar(lb=0.01, ub =1.0, vtype='C', name = 'Sum_Indication')
        GRBVar u = model.addVar(0, 1, 1, GRB.CONTINUOUS, "Sum_Indication");
        /**
         * Create time variables.
         */
//        Is = model.addVars(Email, vtype='B', name = 'Is-Var')
        GRBVar[] Is = model.addVars(lb, ub_B, email, B, isVar);
//        Ie = model.addVars(Email, vtype='B', name = 'Ie-Var')
        GRBVar[] Ie = model.addVars(lb, ub_B, email, B, ieVar);

        double tmin = (double) Collections.min(Arrays.asList(t));
        double tmax = (double) Collections.max(Arrays.asList(t));
//        ts = model.addVar(lb=t[0], ub=t[9], vtype='C', name = 'time-Start')
        GRBVar ts = model.addVar(tmin, tmax, 1, GRB.INTEGER, "time-Start");
//        te = model.addVar(lb=t[0], ub=t[9], vtype='C', name = 'time-End')
        GRBVar te = model.addVar(tmin, tmax, 1, GRB.INTEGER, "time-End");

        /**
         * Weight-Sum constraints.
         */
//        model.addConstr(quicksum(w[i] for i in range(10)) == 1.0, 'Sum(w[i]) == 1.0')
        GRBLinExpr exprConst = new GRBLinExpr();
        exprConst.addTerms(ub_B, w);
        model.addConstr(exprConst, GRB.EQUAL, 1, "Sum(w[i]) == 1.0");
        /**
         * Time constraints.
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

//            model.addGenConstrAnd(I[i], [Is[i], Ie[i]], "TimeCon")
            model.addGenConstrAnd(I[i], new GRBVar[]{Is[i], Ie[i]}, "TimeCon");

//            model.addGenConstrIndicator(Is[i], True, ts-t[i] <= 0.0)
            GRBLinExpr exprT1 = new GRBLinExpr();
            exprT1.addTerm(1, ts);
            exprT1.addConstant(-t[i]);
            model.addGenConstrIndicator(Is[i], 1, exprT1, GRB.LESS_EQUAL, 0.0, "");
//            model.addGenConstrIndicator(Ie[i], True, t[i]-te <= 0.0)
            GRBLinExpr exprT2 = new GRBLinExpr();
            exprT2.addConstant(t[i]);
            exprT2.addTerm(-1, te);
            model.addGenConstrIndicator(Ie[i], 1, exprT2, GRB.LESS_EQUAL, 0.0, "");
//          model.addGenConstrIndicator(Is[i], False, ts-t[i] >= 1)
            GRBLinExpr exprT3 = new GRBLinExpr();
            exprT3.addTerm(1, ts);
            exprT3.addConstant(-t[i]);
            model.addGenConstrIndicator(Is[i], 0, exprT3, GRB.GREATER_EQUAL, 1, "");
//          model.addGenConstrIndicator(Ie[i], False, t[i]-te >= 1)
            GRBLinExpr exprT4 = new GRBLinExpr();
            exprT4.addConstant(t[i]);
            exprT4.addTerm(-1, te);
            model.addGenConstrIndicator(Ie[i], 0, exprT4, GRB.GREATER_EQUAL, 1, "");
        }
        /**
         * Create objective function.
         */
        GRBLinExpr expr = new GRBLinExpr();
        expr.addTerms(score, w);
        model.setObjective(expr, GRB.MAXIMIZE);
        /**
         * Optimize the problem.
         */
        model.optimize();
//        model.write("./time-precision.lp");

        /**
         * Print solution.
         */
//        printSolution(model, y, I, Is, Ie, ts, te);
//        System.out.println("-------------------------------------------------------------------------");
//        System.out.println(ts.get(GRB.StringAttr.VarName) + "= " + ts.get(GRB.DoubleAttr.X));
        double l1 = (double) ts.get(GRB.DoubleAttr.X);
//        System.out.println(l1);
//        System.out.println(Math.ceil(l1));

//        System.out.println(te.get(GRB.StringAttr.VarName) + "= " + te.get(GRB.DoubleAttr.X));
        double l2 = (double) te.get(GRB.DoubleAttr.X);
//        System.out.println(l2);
//        System.out.println(Math.floor(l2));
//        System.out.println("-------------------------------------------------------------------------");

        int idx1 = (int) Math.round(l1);
        int idx2 = (int) Math.round(l2);
//        System.out.println(idx1);
//        System.out.println(idx2);
        SetPrecision se = new SetPrecision(getIds(list));
        List<Document> outList = new ArrayList<>();
        for (int i = 0; i < I.length; i++) {
            if (I[i].get(GRB.DoubleAttr.X) == 1) {
                outList.add(list.get(i));
            }
        }

        Filter filter = new Filter(list, outList, se.getExpectedSetScore(getIds(outList), sf), new ArrayList<>(), time[idx1], time[idx2],
                Double.NaN,
                Double.NaN,
                Double.NaN,
                Double.NaN);

        return filter;
    }

    /**
     * This method implements Yihao's python code for recall with time filter.
     *
     * @param list
     * @param sf
     * @return
     * @throws Exception
     */
    public Filter recallOptimization(List<Document> list, ScoringFunction sf) throws Exception {
        /**
         * Initialization.
         */
        double score[] = new double[list.size()];
        double email[] = new double[list.size()];
        Long time[] = new Long[list.size()];
        for (int i = 0; i < email.length; i++) {
            score[i] = sf.getScore(list.get(i).get(Indexer.MID));
            email[i] = i;
            time[i] = Long.parseLong(list.get(i).get(Indexer.DATE_STORE));
        }
        Integer[] t = new Integer[time.length];
        for (int i = 0; i < t.length; i++) {
            t[i] = i;
        }
        /**
         * PyGurobi translation starts here (Yihao code).
         */
        double u = 1 / DoubleStream.of(score).sum();
        GRBEnv env = new GRBEnv();
        GRBModel model = new GRBModel(env);
        model.set(GRB.StringAttr.ModelName, "recall");
        /**
         * Lower and Upper bounds.
         */
        double[] lb = new double[email.length];
        Arrays.fill(lb, 0);
        double[] ub_B = new double[email.length];
        Arrays.fill(ub_B, 1);
        double[] ub_C = new double[email.length];
        Arrays.fill(ub_C, GRB.INFINITY);

        /**
         * Variable types.
         */
        char C[] = new char[email.length];
        Arrays.fill(C, GRB.CONTINUOUS);
        char B[] = new char[email.length];
        Arrays.fill(B, GRB.BINARY);

        /**
         * Variable names.
         */
        String nameW[] = new String[email.length];
//        Arrays.fill(nameW, "Weight");
        String nameI[] = new String[email.length];
//        Arrays.fill(nameI, "Indication");
        String isVar[] = new String[email.length];
//        Arrays.fill(isVar, "Is-Var");
        String ieVar[] = new String[email.length];
//        Arrays.fill(ieVar, "Ie-Var");
        for (int i = 0; i < email.length; i++) {
            nameW[i] = "Weight[" + i + "]";
            nameI[i] = "Indication[" + i + "]";
            isVar[i] = "Is-Var[" + i + "]";
            ieVar[i] = "Ie-Var[" + i + "]";
        }

        /**
         * Create variables.
         */
//        w = model.addVars(Email, lb=0.0, ub =1.0, vtype='C', name = 'Weight')
        GRBVar[] w = model.addVars(lb, ub_B, email, C, nameW);
//       I = model.addVars(Email, lb=0.0, ub =1.0, vtype='B', name = 'Indication')
        GRBVar[] I = model.addVars(lb, ub_B, email, B, nameI);
        /**
         * Create time variables.
         */
//        Is = model.addVars(Email, vtype='B', name = 'Is-Var')
        GRBVar[] Is = model.addVars(lb, ub_B, email, B, isVar);
//        Ie = model.addVars(Email, vtype='B', name = 'Ie-Var')
        GRBVar[] Ie = model.addVars(lb, ub_B, email, B, ieVar);

        double tmin = (double) Collections.min(Arrays.asList(t));
        double tmax = (double) Collections.max(Arrays.asList(t));
//        ts = model.addVar(lb=t[0], ub=t[9], vtype='C', name = 'time-Start')
        GRBVar ts = model.addVar(tmin, tmax, 1, GRB.INTEGER, "time-Start");
//        te = model.addVar(lb=t[0], ub=t[9], vtype='C', name = 'time-End')
        GRBVar te = model.addVar(tmin, tmax, 1, GRB.INTEGER, "time-End");

        /**
         * Time constraints.
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
            expr2.addConstant(u);
            expr2.addConstant(-M);
            expr2.addTerm(M, I[i]);
            model.addConstr(w[i], GRB.GREATER_EQUAL, expr2, "w[" + i + "] >= u - M*[1-I(" + i + ")]");
//            model.addConstr(w[i] >= 0.0, 'Weight-positive')
            model.addConstr(w[i], GRB.GREATER_EQUAL, 0, "Weight-positive[" + i + "]");

//          model.addGenConstrAnd(I[i], [Is[i], Ie[i]], "TimeCon")
            model.addGenConstrAnd(I[i], new GRBVar[]{Is[i], Ie[i]}, "TimeCon");

//          model.addGenConstrIndicator(Is[i], True, ts-t[i] <= 0.0)
            GRBLinExpr exprT1 = new GRBLinExpr();
            exprT1.addTerm(1, ts);
            exprT1.addConstant(-t[i]);
            model.addGenConstrIndicator(Is[i], 1, exprT1, GRB.LESS_EQUAL, 0.0, "");
//          model.addGenConstrIndicator(Ie[i], True, t[i]-te <= 0.0)
            GRBLinExpr exprT2 = new GRBLinExpr();
            exprT2.addConstant(t[i]);
            exprT2.addTerm(-1, te);
            model.addGenConstrIndicator(Ie[i], 1, exprT2, GRB.LESS_EQUAL, 0.0, "");
//          model.addGenConstrIndicator(Is[i], False, ts-t[i] >= 1)
            GRBLinExpr exprT3 = new GRBLinExpr();
            exprT3.addTerm(1, ts);
            exprT3.addConstant(-t[i]);
            model.addGenConstrIndicator(Is[i], 0, exprT3, GRB.GREATER_EQUAL, 1, "");
//          model.addGenConstrIndicator(Ie[i], False, t[i]-te >= 1)
            GRBLinExpr exprT4 = new GRBLinExpr();
            exprT4.addConstant(t[i]);
            exprT4.addTerm(-1, te);
            model.addGenConstrIndicator(Ie[i], 0, exprT4, GRB.GREATER_EQUAL, 1, "");
        }
        /**
         * Create objective function.
         */
        GRBLinExpr expr = new GRBLinExpr();
        expr.addTerms(score, w);
        model.setObjective(expr, GRB.MAXIMIZE);
        /**
         * Optimize the problem.
         */
        model.optimize();
//        model.write("./time-recall.lp");

        /**
         * Print solution.
         */
//        printSolution(model, w, I, Is, Ie, ts, te);
//        System.out.println("-------------------------------------------------------------------------");
//        System.out.println(ts.get(GRB.StringAttr.VarName) + "= " + ts.get(GRB.DoubleAttr.X));
        double l1 = (double) ts.get(GRB.DoubleAttr.X);
//        System.out.println(l1);
//        System.out.println(Math.ceil(l1));

//        System.out.println(te.get(GRB.StringAttr.VarName) + "= " + te.get(GRB.DoubleAttr.X));
        double l2 = (double) te.get(GRB.DoubleAttr.X);
//        System.out.println(l2);
//        System.out.println(Math.floor(l2));
//        System.out.println("-------------------------------------------------------------------------");

        int idx1 = (int) Math.round(l1);
        int idx2 = (int) Math.round(l2);
//        System.out.println(idx1);
//        System.out.println(idx2);

        SetPrecision se = new SetPrecision(getIds(list));
        List<Document> outList = new ArrayList<>();
        for (int i = 0; i < I.length; i++) {
            if (I[i].get(GRB.DoubleAttr.X) == 1) {
                outList.add(list.get(i));
            }
        }

        Filter filter = new Filter(list, outList, se.getExpectedSetScore(getIds(outList), sf), new ArrayList<>(), time[idx1], time[idx2],
                Double.NaN,
                Double.NaN,
                Double.NaN,
                Double.NaN);

        return filter;
    }

    /**
     * This method implements Yihao's python code for f1-score with time filter.
     *
     * @param list
     * @param sf
     * @return
     * @throws Exception
     */
    public Filter f1_ScoreOptimization(List<Document> list, ScoringFunction sf) throws Exception {
        /**
         * Initialization.
         */
        double score[] = new double[list.size()];
        double email[] = new double[list.size()];
        Long time[] = new Long[list.size()];
        for (int i = 0; i < email.length; i++) {
            score[i] = sf.getScore(list.get(i).get(Indexer.MID));
            email[i] = i;
            time[i] = Long.parseLong(list.get(i).get(Indexer.DATE_STORE));
        }
        Integer[] t = new Integer[time.length];
        for (int i = 0; i < t.length; i++) {
            t[i] = i;
        }
        double c = DoubleStream.of(score).sum();
        /**
         * PyGurobi translation starts here (Yihao code).
         */

        GRBEnv env = new GRBEnv();
        GRBModel model = new GRBModel(env);
        model.set(GRB.StringAttr.ModelName, "f1-score");
        /**
         * Lower and Upper bounds.
         */
        double[] lb = new double[email.length];
        Arrays.fill(lb, 0);
        double[] ub_B = new double[email.length];
        Arrays.fill(ub_B, 1);
        double[] ub_C = new double[email.length];
        Arrays.fill(ub_C, GRB.INFINITY);

        /**
         * Variable types.
         */
        char C[] = new char[email.length];
        Arrays.fill(C, GRB.CONTINUOUS);
        char B[] = new char[email.length];
        Arrays.fill(B, GRB.BINARY);

        /**
         * Variable names.
         */
        String nameW[] = new String[email.length];
//        Arrays.fill(nameW, "Weight");
        String nameI[] = new String[email.length];
//        Arrays.fill(nameI, "Indication");
        String isVar[] = new String[email.length];
//        Arrays.fill(isVar, "Is-Var");
        String ieVar[] = new String[email.length];
//        Arrays.fill(ieVar, "Ie-Var");
        for (int i = 0; i < email.length; i++) {
            nameW[i] = "Weight[" + i + "]";
            nameI[i] = "Indication[" + i + "]";
            isVar[i] = "Is-Var[" + i + "]";
            ieVar[i] = "Ie-Var[" + i + "]";
        }

        /**
         * Create variables.
         */
//        w = model.addVars(Email, lb=0.0, ub =1.0, vtype='C', name = 'Weight')
        GRBVar[] w = model.addVars(lb, ub_B, email, C, nameW);
//        z = model.addVars(Email, lb=0.0, up =1.0, vtype='B', name = 'Indication')
        GRBVar[] I = model.addVars(lb, ub_B, email, B, nameI);
//        u = model.addVar(lb=0.01, ub =1.0, vtype='C', name = 'Sum_Indication')
        GRBVar u = model.addVar(0, 1, 1, GRB.CONTINUOUS, "Sum_Indication");
        /**
         * Create time variables.
         */
//        Is = model.addVars(Email, vtype='B', name = 'Is-Var')
        GRBVar[] Is = model.addVars(lb, ub_B, email, B, isVar);
//        Ie = model.addVars(Email, vtype='B', name = 'Ie-Var')
        GRBVar[] Ie = model.addVars(lb, ub_B, email, B, ieVar);

        double tmin = (double) Collections.min(Arrays.asList(t));
        double tmax = (double) Collections.max(Arrays.asList(t));
//        ts = model.addVar(lb=t[0], ub=t[9], vtype='C', name = 'time-Start')
        GRBVar ts = model.addVar(tmin, tmax, 1, GRB.INTEGER, "time-Start");
//        te = model.addVar(lb=t[0], ub=t[9], vtype='C', name = 'time-End')
        GRBVar te = model.addVar(tmin, tmax, 1, GRB.INTEGER, "time-End");

        /**
         * Constraints.
         */
//        model.addConstr(quicksum(w[i] for i in range(10))+u*C == 1.0, 'sum(w)+uC=1')
        GRBLinExpr exprConst = new GRBLinExpr();
        exprConst.addTerms(ub_B, w);
        exprConst.addTerm(c, u);
        model.addConstr(exprConst, GRB.EQUAL, 1, "sum(w)+uC=1");
        for (int i = 0; i < email.length; i++) {
//          model.addConstr(w[i] <= u, 'w[i] <= u')
            model.addConstr(w[i], GRB.LESS_EQUAL, u, "w[" + i + "]<=u");
//          model.addConstr(w[i] <= 1e4*I[i], 'w[i] <= M*I(i)')
            GRBLinExpr expr1 = new GRBLinExpr();
            expr1.addTerm(M, I[i]);
            model.addConstr(w[i], GRB.LESS_EQUAL, expr1, "w[" + i + "]<=M*I(" + i + ")");

//          model.addConstr(w[i] >= u-1e4*(1-I[i]),'w[i] >= u - M*[1-I(i)]')
            GRBLinExpr expr2 = new GRBLinExpr();
            expr2.addTerm(1, u);
            expr2.addConstant(-M);
            expr2.addTerm(M, I[i]);
            model.addConstr(w[i], GRB.GREATER_EQUAL, expr2, "w[" + i + "]>=u-M*[1-I(" + i + ")]");

//            model.addConstr(w[i] >= 0.0, 'Weight-positive')
            model.addConstr(w[i], GRB.GREATER_EQUAL, 0, "Weight-positive[" + i + "]");

//          model.addGenConstrAnd(I[i], [Is[i], Ie[i]], "TimeCon")
            model.addGenConstrAnd(I[i], new GRBVar[]{Is[i], Ie[i]}, "TimeCon[" + i + "]");

//          model.addGenConstrIndicator(Is[i], True, ts-t[i] <= 0)
            GRBLinExpr exprT1 = new GRBLinExpr();
            exprT1.addTerm(1, ts);
            exprT1.addConstant(-t[i]);
            model.addGenConstrIndicator(Is[i], 1, exprT1, GRB.LESS_EQUAL, 0.0, "");
//          model.addGenConstrIndicator(Ie[i], True, t[i]-te <= 0)
            GRBLinExpr exprT2 = new GRBLinExpr();
            exprT2.addConstant(t[i]);
            exprT2.addTerm(-1, te);
            model.addGenConstrIndicator(Ie[i], 1, exprT2, GRB.LESS_EQUAL, 0.0, "");
//          model.addGenConstrIndicator(Is[i], False, ts-t[i] >= 1)
            GRBLinExpr exprT3 = new GRBLinExpr();
            exprT3.addTerm(1, ts);
            exprT3.addConstant(-t[i]);
            model.addGenConstrIndicator(Is[i], 0, exprT3, GRB.GREATER_EQUAL, 1, "");
//          model.addGenConstrIndicator(Ie[i], False, t[i]-te >= 1)
            GRBLinExpr exprT4 = new GRBLinExpr();
            exprT4.addConstant(t[i]);
            exprT4.addTerm(-1, te);
            model.addGenConstrIndicator(Ie[i], 0, exprT4, GRB.GREATER_EQUAL, 1, "");

        }
        /**
         * Create objective function.
         */
        GRBLinExpr expr = new GRBLinExpr();
        expr.addTerms(score, w);
        model.setObjective(expr, GRB.MAXIMIZE);
        /**
         * Optimize the problem.
         */
        model.optimize();
//        model.write("./f1-scoreS.lp");

        /**
         * Print solution.
         */
//        printSolution(model, w, I, Is, Ie, ts, te);
//        System.out.println("-------------------------------------------------------------------------");
//        System.out.println(ts.get(GRB.StringAttr.VarName) + "= " + ts.get(GRB.DoubleAttr.X));
        double l1 = (double) ts.get(GRB.DoubleAttr.X);
//        System.out.println(l1);
//        System.out.println(Math.ceil(l1));

//        System.out.println(te.get(GRB.StringAttr.VarName) + "= " + te.get(GRB.DoubleAttr.X));
        double l2 = (double) te.get(GRB.DoubleAttr.X);
//        System.out.println(l2);
//        System.out.println(Math.floor(l2));
//        System.out.println("-------------------------------------------------------------------------");

        int idx1 = (int) Math.round(l1);
        int idx2 = (int) Math.round(l2);
//        System.out.println(idx1);
//        System.out.println(idx2);
        SetPrecision se = new SetPrecision(getIds(list));
        List<Document> outList = new ArrayList<>();
        for (int i = 0; i < I.length; i++) {
            if (I[i].get(GRB.DoubleAttr.X) == 1) {
                outList.add(list.get(i));
            }
        }

        Filter filter = new Filter(list, outList, se.getExpectedSetScore(getIds(outList), sf), new ArrayList<>(), time[idx1], time[idx2],
                Double.NaN,
                Double.NaN,
                Double.NaN,
                Double.NaN);

        return filter;
    }

    private static void printSolution(GRBModel model, GRBVar[] w,
            GRBVar[] I, GRBVar[] is, GRBVar[] ie, GRBVar ts, GRBVar te) throws GRBException {
        if (model.get(GRB.IntAttr.Status) == GRB.Status.OPTIMAL) {
            System.out.println("\nCost: " + model.get(GRB.DoubleAttr.ObjVal));
            System.out.println("\nw:");
            for (int i = 0; i < w.length; ++i) {
                System.out.println(w[i].get(GRB.StringAttr.VarName) + "[" + i + "]= "
                        + w[i].get(GRB.DoubleAttr.X));

            }
            System.out.println("\nI:");
            for (int i = 0; i < I.length; ++i) {
                System.out.println(I[i].get(GRB.StringAttr.VarName) + "[" + i + "]= "
                        + I[i].get(GRB.DoubleAttr.X));
            }
            System.out.println("\nIs:");
            for (int i = 0; i < is.length; ++i) {
                System.out.println(is[i].get(GRB.StringAttr.VarName) + "[" + i + "]= "
                        + is[i].get(GRB.DoubleAttr.X));
            }
            System.out.println("\nIe:");
            for (int i = 0; i < ie.length; ++i) {
                System.out.println(ie[i].get(GRB.StringAttr.VarName) + "[" + i + "]= "
                        + ie[i].get(GRB.DoubleAttr.X));
            }
            System.out.println("");
            System.out.println(ts.get(GRB.StringAttr.VarName) + "= " + ts.get(GRB.DoubleAttr.X));
            System.out.println(te.get(GRB.StringAttr.VarName) + "= " + te.get(GRB.DoubleAttr.X));
        } else {
            System.out.println("No solution");
        }
    }

    @Override
    public List<Filter> getTopFilters(TopDocs hits, SetEvaluation setEval, ScoringFunction sf, int k) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
