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
import utoronto.ca.ir.search.SetSelector;

/**
 * This method implements the Gurobi-based selector using Positions. It is based
 * on the Yihao's code, translated by Reda from Python to Java. Please contact
 * him for more information (Yihao Du
 * <duyihao@mie.utoronto.ca>).
 *
 * @author rbouadjenek
 */
public class GurobiSelectorPosition extends GurobiSelector {

    public GurobiSelectorPosition(IndexSearcher is, Map<String, Double> malicious) {
        super(is, malicious);
    }

    public GurobiSelectorPosition(String indexDir, double rate_malicious) throws IOException {
        super(indexDir, rate_malicious);
    }

    /**
     * This methods implements the Time-based Gurobi optimization search
     * algorithm.
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
//        List<Document> docSet = orderList(TopDocs2List(hits), Indexer.DATE_STORE, ASC);
        if (setEval instanceof SetPrecision) {
            return precisionOptimization(TopDocs2List(hits), sf);
        }
        if (setEval instanceof SetRecall) {
            return recallOptimization(TopDocs2List(hits), sf);
        }
        if (setEval instanceof SetF1_Score) {
            return f1_ScoreOptimization(TopDocs2List(hits), sf);
        } else {
            return null;
        }

    }

    /**
     * This method implements Yihao's python code for precision with location
     * filter.
     *
     * @param list
     * @param sf
     * @return
     * @throws Exception
     */
    public Filter precisionOptimization(List<Document> list, ScoringFunction sf) throws Exception {
        /**
         * Mapping
         */
        List<Document> list_pos_x = orderList(list, Indexer.POS_X, SetSelector.ASC);
        List<Document> list_pos_y = orderList(list, Indexer.POS_Y, SetSelector.ASC);
        Integer[] xe = new Integer[list.size()];
        Integer[] ye = new Integer[list.size()];
        double s[] = new double[list.size()];
        double email[] = new double[list.size()];
        for (int i = 0; i < list.size(); i++) {
            Document doc = list.get(i);
            s[i] = sf.getScore(doc.get(Indexer.MID));
            email[i] = i;

            xe[i] = list_pos_x.indexOf(doc);
            ye[i] = list_pos_y.indexOf(doc);
        }
        /**
         * PyGurobi translation starts here (Yihao code).
         */
        GRBEnv env = new GRBEnv();
        GRBModel model = new GRBModel(env);
        model.set(GRB.StringAttr.ModelName, "location-precision");
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
        String nameI[] = new String[email.length];
        String IxsVar[] = new String[email.length];
        String IxlVar[] = new String[email.length];

        String IysVar[] = new String[email.length];
        String IylVar[] = new String[email.length];
//        Arrays.fill(ieVar, "Ie-Var");
        for (int i = 0; i < email.length; i++) {
            nameW[i] = "Weight[" + i + "]";
            nameI[i] = "Indication[" + i + "]";
            IxsVar[i] = "Ixs-Var[" + i + "]";
            IxlVar[i] = "Ixl-Var[" + i + "]";
            IysVar[i] = "Iys-Var[" + i + "]";
            IylVar[i] = "Iyl-Var[" + i + "]";
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
         * Create position variables.
         */
//        Ixs = model.addVars(Email, vtype='B', name = 'Ixs-Var')
        GRBVar[] Ixs = model.addVars(lb, ub_B, email, B, IxsVar);
//        Ixl = model.addVars(Email, vtype='B', name = 'Ixl-Var')
        GRBVar[] Ixl = model.addVars(lb, ub_B, email, B, IxlVar);
//        Iys = model.addVars(Email, vtype='B', name = 'Iys-Var')
        GRBVar[] Iys = model.addVars(lb, ub_B, email, B, IysVar);
//        Iyl = model.addVars(Email, vtype='B', name = 'Iyl-Var')
        GRBVar[] Iyl = model.addVars(lb, ub_B, email, B, IylVar);

        int xemin = (int) Collections.min(Arrays.asList(xe));
        int xemax = (int) Collections.max(Arrays.asList(xe));
        int yemin = (int) Collections.min(Arrays.asList(ye));
        int yemax = (int) Collections.max(Arrays.asList(ye));
//        xmin = model.addVar(lb=xe[0], ub=xe[9], vtype='C', name = 'Xmin')
        GRBVar xmin = model.addVar(xemin, xemax, 1, GRB.INTEGER, "Xmin");
//        xmax = model.addVar(lb=xe[0], ub=xe[9], vtype='C', name = 'Xmax')
        GRBVar xmax = model.addVar(xemin, xemax, 1, GRB.INTEGER, "Xmax");
//        ymin = model.addVar(lb=ye[0], ub=ye[9], vtype='C', name = 'Ymin')
        GRBVar ymin = model.addVar(yemin, yemax, 1, GRB.INTEGER, "Ymin");
//        ymax = model.addVar(lb=ye[0], ub=ye[9], vtype='C', name = 'Ymax')
        GRBVar ymax = model.addVar(yemin, yemax, 1, GRB.INTEGER, "Ymax");

        /**
         * Weight-Sum constraints.
         */
//        model.addConstr(quicksum(w[i] for i in range(10)) == 1.0, 'Sum(w[i]) == 1.0')
        GRBLinExpr exprConst = new GRBLinExpr();
        exprConst.addTerms(ub_B, w);
        model.addConstr(exprConst, GRB.EQUAL, 1, "Sum(w[i]) == 1.0");
        /**
         * Position constraints.
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

//          model.addGenConstrAnd(I[i], [Ixs[i], Ixl[i], Iys[i], Iyl[i]], "PosCon")
            model.addGenConstrAnd(I[i], new GRBVar[]{Ixs[i], Ixl[i], Iys[i], Iyl[i]}, "PosCon");

//          model.addGenConstrIndicator(Ixs[i], True, xmin-xe[i] <= 0.0)
            GRBLinExpr exprL1 = new GRBLinExpr();
            exprL1.addTerm(1, xmin);
            exprL1.addConstant(-xe[i]);
            model.addGenConstrIndicator(Ixs[i], 1, exprL1, GRB.LESS_EQUAL, 0.0, "");
//          model.addGenConstrIndicator(Ixl[i], True, xe[i]-xmax <= 0.0)
            GRBLinExpr exprL2 = new GRBLinExpr();
            exprL2.addConstant(xe[i]);
            exprL2.addTerm(-1, xmax);
            model.addGenConstrIndicator(Ixl[i], 1, exprL2, GRB.LESS_EQUAL, 0.0, "");
//          model.addGenConstrIndicator(Iys[i], True, ymin-ye[i] <= 0.0)
            GRBLinExpr exprL3 = new GRBLinExpr();
            exprL3.addTerm(1, ymin);
            exprL3.addConstant(-ye[i]);
            model.addGenConstrIndicator(Iys[i], 1, exprL3, GRB.LESS_EQUAL, 0.0, "");
//          model.addGenConstrIndicator(Iyl[i], True, ye[i]-ymax <= 0.0)
            GRBLinExpr exprL4 = new GRBLinExpr();
            exprL4.addConstant(ye[i]);
            exprL4.addTerm(-1, ymax);
            model.addGenConstrIndicator(Iyl[i], 1, exprL4, GRB.LESS_EQUAL, 0.0, "");

//          model.addGenConstrIndicator(Ixs[i], False, xmin-xe[i] >= 0.0001)
            GRBLinExpr exprL5 = new GRBLinExpr();
            exprL5.addTerm(1, xmin);
            exprL5.addConstant(-xe[i]);
            model.addGenConstrIndicator(Ixs[i], 0, exprL5, GRB.GREATER_EQUAL, 1, "");
//           model.addGenConstrIndicator(Ixl[i], False, xe[i]-xmax >= 0.0001)
            GRBLinExpr exprL6 = new GRBLinExpr();
            exprL6.addConstant(xe[i]);
            exprL6.addTerm(-1, xmax);
            model.addGenConstrIndicator(Ixl[i], 0, exprL6, GRB.GREATER_EQUAL, 1, "");
//           model.addGenConstrIndicator(Iys[i], False, ymin-ye[i] >= 0.0001)
            GRBLinExpr exprL7 = new GRBLinExpr();
            exprL7.addTerm(1, ymin);
            exprL7.addConstant(-ye[i]);
            model.addGenConstrIndicator(Iys[i], 0, exprL7, GRB.GREATER_EQUAL, 1, "");
//           model.addGenConstrIndicator(Iyl[i], False, ye[i]-ymax >= 0.0001)
            GRBLinExpr exprL8 = new GRBLinExpr();
            exprL8.addConstant(ye[i]);
            exprL8.addTerm(-1, ymax);
            model.addGenConstrIndicator(Iyl[i], 0, exprL8, GRB.GREATER_EQUAL, 1, "");
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
//        model.write("./location-precision.lp");
        /**
         * Print solution.
         */
//        printSolution(model, y, I, Is, Ie, ts, te);
        double l1 = (double) xmin.get(GRB.DoubleAttr.X);
        double l2 = (double) ymin.get(GRB.DoubleAttr.X);

        double l3 = (double) xmax.get(GRB.DoubleAttr.X);
        double l4 = (double) ymax.get(GRB.DoubleAttr.X);

        int idx3 = (int) Math.round(l1);
        int idx4 = (int) Math.round(l2);

        int idx5 = (int) Math.round(l3);
        int idx6 = (int) Math.round(l4);
//        System.out.println(idx1);
//        System.out.println(idx2);
//        System.out.println(idx3);
//        System.out.println(idx4);

        SetPrecision se = new SetPrecision(getIds(list));
        List<Document> outList = new ArrayList<>();
        for (int i = 0; i < I.length; i++) {
            if (I[i].get(GRB.DoubleAttr.X) == 1) {
                outList.add(list.get(i));
            }
        }
        Filter filter = new Filter(list, outList, se.getExpectedSetScore(getIds(outList), sf), new ArrayList<>(), -1, -1,
                Double.parseDouble(list_pos_x.get(idx3).get(Indexer.POS_X)),
                Double.parseDouble(list_pos_x.get(idx5).get(Indexer.POS_X)),
                Double.parseDouble(list_pos_y.get(idx4).get(Indexer.POS_Y)),
                Double.parseDouble(list_pos_y.get(idx6).get(Indexer.POS_Y)));

        return filter;
    }

    /**
     * This method implements Yihao's python code for recall with location
     * filter.
     *
     * @param list
     * @param sf
     * @return
     * @throws Exception
     */
    public Filter recallOptimization(List<Document> list, ScoringFunction sf) throws Exception {
        /**
         * Mapping
         */
        List<Document> list_pos_x = orderList(list, Indexer.POS_X, SetSelector.ASC);
        List<Document> list_pos_y = orderList(list, Indexer.POS_Y, SetSelector.ASC);
        Integer[] xe = new Integer[list.size()];
        Integer[] ye = new Integer[list.size()];
        double s[] = new double[list.size()];
        double email[] = new double[list.size()];
        for (int i = 0; i < list.size(); i++) {
            Document doc = list.get(i);
            s[i] = sf.getScore(doc.get(Indexer.MID));
            email[i] = i;

            xe[i] = list_pos_x.indexOf(doc);
            ye[i] = list_pos_y.indexOf(doc);
        }
        /**
         * PyGurobi translation starts here (Yihao code).
         */
        double u = 1 / DoubleStream.of(s).sum();
        GRBEnv env = new GRBEnv();
        GRBModel model = new GRBModel(env);
        model.set(GRB.StringAttr.ModelName, "location-recall");
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
        String nameI[] = new String[email.length];
        String IxsVar[] = new String[email.length];
        String IxlVar[] = new String[email.length];

        String IysVar[] = new String[email.length];
        String IylVar[] = new String[email.length];
//        Arrays.fill(ieVar, "Ie-Var");
        for (int i = 0; i < email.length; i++) {
            nameW[i] = "Weight[" + i + "]";
            nameI[i] = "Indication[" + i + "]";
            IxsVar[i] = "Ixs-Var[" + i + "]";
            IxlVar[i] = "Ixl-Var[" + i + "]";
            IysVar[i] = "Iys-Var[" + i + "]";
            IylVar[i] = "Iyl-Var[" + i + "]";
        }

        /**
         * Create variables.
         */
//        w = model.addVars(Email, lb=0.0, ub =1.0, vtype='C', name = 'Weight')
        GRBVar[] w = model.addVars(lb, ub_B, email, C, nameW);
//        I = model.addVars(Email, lb=0.0, ub =1.0, vtype='B', name = 'Indication')
        GRBVar[] I = model.addVars(lb, ub_B, email, B, nameI);

        /**
         * Create position variables.
         */
//        Ixs = model.addVars(Email, vtype='B', name = 'Ixs-Var')
        GRBVar[] Ixs = model.addVars(lb, ub_B, email, B, IxsVar);
//        Ixl = model.addVars(Email, vtype='B', name = 'Ixl-Var')
        GRBVar[] Ixl = model.addVars(lb, ub_B, email, B, IxlVar);
//        Iys = model.addVars(Email, vtype='B', name = 'Iys-Var')
        GRBVar[] Iys = model.addVars(lb, ub_B, email, B, IysVar);
//        Iyl = model.addVars(Email, vtype='B', name = 'Iyl-Var')
        GRBVar[] Iyl = model.addVars(lb, ub_B, email, B, IylVar);

        int xemin = (int) Collections.min(Arrays.asList(xe));
        int xemax = (int) Collections.max(Arrays.asList(xe));
        int yemin = (int) Collections.min(Arrays.asList(ye));
        int yemax = (int) Collections.max(Arrays.asList(ye));
//        xmin = model.addVar(lb=xe[0], ub=xe[9], vtype='C', name = 'Xmin')
        GRBVar xmin = model.addVar(xemin, xemax, 1, GRB.INTEGER, "Xmin");
//        xmax = model.addVar(lb=xe[0], ub=xe[9], vtype='C', name = 'Xmax')
        GRBVar xmax = model.addVar(xemin, xemax, 1, GRB.INTEGER, "Xmax");
//        ymin = model.addVar(lb=ye[0], ub=ye[9], vtype='C', name = 'Ymin')
        GRBVar ymin = model.addVar(yemin, yemax, 1, GRB.INTEGER, "Ymin");
//        ymax = model.addVar(lb=ye[0], ub=ye[9], vtype='C', name = 'Ymax')
        GRBVar ymax = model.addVar(yemin, yemax, 1, GRB.INTEGER, "Ymax");

        /**
         * Position constraints.
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

//            model.addGenConstrAnd(I[i], [Ixs[i], Ixl[i], Iys[i], Iyl[i]], "PosCon")
            model.addGenConstrAnd(I[i], new GRBVar[]{Ixs[i], Ixl[i], Iys[i], Iyl[i]}, "PosCon");

            //          model.addGenConstrIndicator(Ixs[i], True, xmin-xe[i] <= 0.0)
            GRBLinExpr exprL1 = new GRBLinExpr();
            exprL1.addTerm(1, xmin);
            exprL1.addConstant(-xe[i]);
            model.addGenConstrIndicator(Ixs[i], 1, exprL1, GRB.LESS_EQUAL, 0.0, "");
//          model.addGenConstrIndicator(Ixl[i], True, xe[i]-xmax <= 0.0)
            GRBLinExpr exprL2 = new GRBLinExpr();
            exprL2.addConstant(xe[i]);
            exprL2.addTerm(-1, xmax);
            model.addGenConstrIndicator(Ixl[i], 1, exprL2, GRB.LESS_EQUAL, 0.0, "");
//          model.addGenConstrIndicator(Iys[i], True, ymin-ye[i] <= 0.0)
            GRBLinExpr exprL3 = new GRBLinExpr();
            exprL3.addTerm(1, ymin);
            exprL3.addConstant(-ye[i]);
            model.addGenConstrIndicator(Iys[i], 1, exprL3, GRB.LESS_EQUAL, 0.0, "");
//          model.addGenConstrIndicator(Iyl[i], True, ye[i]-ymax <= 0.0)
            GRBLinExpr exprL4 = new GRBLinExpr();
            exprL4.addConstant(ye[i]);
            exprL4.addTerm(-1, ymax);
            model.addGenConstrIndicator(Iyl[i], 1, exprL4, GRB.LESS_EQUAL, 0.0, "");

//          model.addGenConstrIndicator(Ixs[i], False, xmin-xe[i] >= 0.0001)
            GRBLinExpr exprL5 = new GRBLinExpr();
            exprL5.addTerm(1, xmin);
            exprL5.addConstant(-xe[i]);
            model.addGenConstrIndicator(Ixs[i], 0, exprL5, GRB.GREATER_EQUAL, 1, "");
//           model.addGenConstrIndicator(Ixl[i], False, xe[i]-xmax >= 0.0001)
            GRBLinExpr exprL6 = new GRBLinExpr();
            exprL6.addConstant(xe[i]);
            exprL6.addTerm(-1, xmax);
            model.addGenConstrIndicator(Ixl[i], 0, exprL6, GRB.GREATER_EQUAL, 1, "");
//           model.addGenConstrIndicator(Iys[i], False, ymin-ye[i] >= 0.0001)
            GRBLinExpr exprL7 = new GRBLinExpr();
            exprL7.addTerm(1, ymin);
            exprL7.addConstant(-ye[i]);
            model.addGenConstrIndicator(Iys[i], 0, exprL7, GRB.GREATER_EQUAL, 1, "");
//           model.addGenConstrIndicator(Iyl[i], False, ye[i]-ymax >= 0.0001)
            GRBLinExpr exprL8 = new GRBLinExpr();
            exprL8.addConstant(ye[i]);
            exprL8.addTerm(-1, ymax);
            model.addGenConstrIndicator(Iyl[i], 0, exprL8, GRB.GREATER_EQUAL, 1, "");

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
//        model.write("./location-recall.lp");

        /**
         * Print solution.
         */
//        printSolution(model, y, I, Is, Ie, ts, te);
        double l1 = (double) xmin.get(GRB.DoubleAttr.X);
        double l2 = (double) ymin.get(GRB.DoubleAttr.X);

        double l3 = (double) xmax.get(GRB.DoubleAttr.X);
        double l4 = (double) ymax.get(GRB.DoubleAttr.X);

        int idx3 = (int) Math.round(l1);
        int idx4 = (int) Math.round(l2);

        int idx5 = (int) Math.round(l3);
        int idx6 = (int) Math.round(l4);
//        System.out.println(idx1);
//        System.out.println(idx2);
//        System.out.println(idx3);
//        System.out.println(idx4);

        SetPrecision se = new SetPrecision(getIds(list));
        List<Document> outList = new ArrayList<>();
        for (int i = 0; i < I.length; i++) {
            if (I[i].get(GRB.DoubleAttr.X) == 1) {
                outList.add(list.get(i));
            }
        }
        Filter filter = new Filter(list, outList, se.getExpectedSetScore(getIds(outList), sf), new ArrayList<>(), -1, -1,
                Double.parseDouble(list_pos_x.get(idx3).get(Indexer.POS_X)),
                Double.parseDouble(list_pos_x.get(idx5).get(Indexer.POS_X)),
                Double.parseDouble(list_pos_y.get(idx4).get(Indexer.POS_Y)),
                Double.parseDouble(list_pos_y.get(idx6).get(Indexer.POS_Y)));

        return filter;
    }

    /**
     * This method implements Yihao's python code for f1-score with location
     * filter.
     *
     * @param list
     * @param sf
     * @return
     * @throws Exception
     */
    public Filter f1_ScoreOptimization(List<Document> list, ScoringFunction sf) throws Exception {
        /**
         * Mapping
         */
        List<Document> list_pos_x = orderList(list, Indexer.POS_X, SetSelector.ASC);
        List<Document> list_pos_y = orderList(list, Indexer.POS_Y, SetSelector.ASC);
        Integer[] xe = new Integer[list.size()];
        Integer[] ye = new Integer[list.size()];
        double s[] = new double[list.size()];
        double email[] = new double[list.size()];
        for (int i = 0; i < list.size(); i++) {
            Document doc = list.get(i);
            s[i] = sf.getScore(doc.get(Indexer.MID));
            email[i] = i;

            xe[i] = list_pos_x.indexOf(doc);
            ye[i] = list_pos_y.indexOf(doc);
        }
        /**
         * PyGurobi translation starts here (Yihao code).
         */
        double c = DoubleStream.of(s).sum();
        GRBEnv env = new GRBEnv();
        GRBModel model = new GRBModel(env);
        model.set(GRB.StringAttr.ModelName, "location-f1_score");
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
        String nameI[] = new String[email.length];
        String IxsVar[] = new String[email.length];
        String IxlVar[] = new String[email.length];

        String IysVar[] = new String[email.length];
        String IylVar[] = new String[email.length];
        for (int i = 0; i < email.length; i++) {
            nameW[i] = "Weight[" + i + "]";
            nameI[i] = "Indication[" + i + "]";
            IxsVar[i] = "Ixs-Var[" + i + "]";
            IxlVar[i] = "Ixl-Var[" + i + "]";
            IysVar[i] = "Iys-Var[" + i + "]";
            IylVar[i] = "Iyl-Var[" + i + "]";
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
         * Create position variables.
         */
//        Ixs = model.addVars(Email, vtype='B', name = 'Ixs-Var')
        GRBVar[] Ixs = model.addVars(lb, ub_B, email, B, IxsVar);
//        Ixl = model.addVars(Email, vtype='B', name = 'Ixl-Var')
        GRBVar[] Ixl = model.addVars(lb, ub_B, email, B, IxlVar);
//        Iys = model.addVars(Email, vtype='B', name = 'Iys-Var')
        GRBVar[] Iys = model.addVars(lb, ub_B, email, B, IysVar);
//        Iyl = model.addVars(Email, vtype='B', name = 'Iyl-Var')
        GRBVar[] Iyl = model.addVars(lb, ub_B, email, B, IylVar);

        int xemin = (int) Collections.min(Arrays.asList(xe));
        int xemax = (int) Collections.max(Arrays.asList(xe));
        int yemin = (int) Collections.min(Arrays.asList(ye));
        int yemax = (int) Collections.max(Arrays.asList(ye));
//        xmin = model.addVar(lb=xe[0], ub=xe[9], vtype='C', name = 'Xmin')
        GRBVar xmin = model.addVar(xemin, xemax, 1, GRB.INTEGER, "Xmin");
//        xmax = model.addVar(lb=xe[0], ub=xe[9], vtype='C', name = 'Xmax')
        GRBVar xmax = model.addVar(xemin, xemax, 1, GRB.INTEGER, "Xmax");
//        ymin = model.addVar(lb=ye[0], ub=ye[9], vtype='C', name = 'Ymin')
        GRBVar ymin = model.addVar(yemin, yemax, 1, GRB.INTEGER, "Ymin");
//        ymax = model.addVar(lb=ye[0], ub=ye[9], vtype='C', name = 'Ymax')
        GRBVar ymax = model.addVar(yemin, yemax, 1, GRB.INTEGER, "Ymax");

        /**
         * Weight-Sum constraints.
         */
//        model.addConstr(quicksum(w[i] for i in range(10))+u*C == 1.0, 'sum(w)+uC=1')
        GRBLinExpr exprConst = new GRBLinExpr();
        exprConst.addTerms(ub_B, w);
        exprConst.addTerm(c, u);
        model.addConstr(exprConst, GRB.EQUAL, 1, "sum(w)+uC=1");

        /**
         * Position constraints.
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

//          model.addGenConstrAnd(z[i], [Ixs[i], Ixl[i], Iys[i], Iyl[i]], "PosCon")
            model.addGenConstrAnd(I[i], new GRBVar[]{Ixs[i], Ixl[i], Iys[i], Iyl[i]}, "PosCon[" + i + "]");

//          model.addGenConstrIndicator(Ixs[i], True, xmin-xe[i] <= 0.0)
            GRBLinExpr exprL1 = new GRBLinExpr();
            exprL1.addTerm(1, xmin);
            exprL1.addConstant(-xe[i]);
            model.addGenConstrIndicator(Ixs[i], 1, exprL1, GRB.LESS_EQUAL, 0.0, "");
//          model.addGenConstrIndicator(Ixl[i], True, xe[i]-xmax <= 0.0)
            GRBLinExpr expLL2 = new GRBLinExpr();
            expLL2.addConstant(xe[i]);
            expLL2.addTerm(-1, xmax);
            model.addGenConstrIndicator(Ixl[i], 1, expLL2, GRB.LESS_EQUAL, 0.0, "");
//          model.addGenConstrIndicator(Iys[i], True, ymin-ye[i] <= 0.0)
            GRBLinExpr exprL3 = new GRBLinExpr();
            exprL3.addTerm(1, ymin);
            exprL3.addConstant(-ye[i]);
            model.addGenConstrIndicator(Iys[i], 1, exprL3, GRB.LESS_EQUAL, 0.0, "");
//          model.addGenConstrIndicator(Iyl[i], True, ye[i]-ymax <= 0.0)
            GRBLinExpr exprL4 = new GRBLinExpr();
            exprL4.addConstant(ye[i]);
            exprL4.addTerm(-1, ymax);
            model.addGenConstrIndicator(Iyl[i], 1, exprL4, GRB.LESS_EQUAL, 0.0, "");

//          model.addGenConstrIndicator(Ixs[i], False, xmin-xe[i] >= 1)
            GRBLinExpr exprL5 = new GRBLinExpr();
            exprL5.addTerm(1, xmin);
            exprL5.addConstant(-xe[i]);
            model.addGenConstrIndicator(Ixs[i], 0, exprL5, GRB.GREATER_EQUAL, 1, "");
//           model.addGenConstrIndicator(Ixl[i], False, xe[i]-xmax >= 1)
            GRBLinExpr exprL6 = new GRBLinExpr();
            exprL6.addConstant(xe[i]);
            exprL6.addTerm(-1, xmax);
            model.addGenConstrIndicator(Ixl[i], 0, exprL6, GRB.GREATER_EQUAL, 1, "");
//           model.addGenConstrIndicator(Iys[i], False, ymin-ye[i] >= 1)
            GRBLinExpr exprL7 = new GRBLinExpr();
            exprL7.addTerm(1, ymin);
            exprL7.addConstant(-ye[i]);
            model.addGenConstrIndicator(Iys[i], 0, exprL7, GRB.GREATER_EQUAL, 1, "");
//           model.addGenConstrIndicator(Iyl[i], False, ye[i]-ymax >= 1)
            GRBLinExpr exprL8 = new GRBLinExpr();
            exprL8.addConstant(ye[i]);
            exprL8.addTerm(-1, ymax);
            model.addGenConstrIndicator(Iyl[i], 0, exprL8, GRB.GREATER_EQUAL, 1, "");
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
//        model.write("./f1_score_S.lp");

        /**
         * Print solution.
         */
//        printSolution(model, y, I, Is, Ie, ts, te);
        double l1 = (double) xmin.get(GRB.DoubleAttr.X);
        double l2 = (double) ymin.get(GRB.DoubleAttr.X);

        double l3 = (double) xmax.get(GRB.DoubleAttr.X);
        double l4 = (double) ymax.get(GRB.DoubleAttr.X);

        int idx3 = (int) Math.round(l1);
        int idx4 = (int) Math.round(l2);

        int idx5 = (int) Math.round(l3);
        int idx6 = (int) Math.round(l4);
//        System.out.println(idx1);
//        System.out.println(idx2);
//        System.out.println(idx3);
//        System.out.println(idx4);

        SetPrecision se = new SetPrecision(getIds(list));
        List<Document> outList = new ArrayList<>();
        for (int i = 0; i < I.length; i++) {
            if (I[i].get(GRB.DoubleAttr.X) == 1) {
                outList.add(list.get(i));
                System.out.println(list.get(i).get(Indexer.MID));
            }
        }
        Filter filter = new Filter(list, outList, se.getExpectedSetScore(getIds(outList), sf), new ArrayList<>(), -1, -1,
                Double.parseDouble(list_pos_x.get(idx3).get(Indexer.POS_X)),
                Double.parseDouble(list_pos_x.get(idx5).get(Indexer.POS_X)),
                Double.parseDouble(list_pos_y.get(idx4).get(Indexer.POS_Y)),
                Double.parseDouble(list_pos_y.get(idx6).get(Indexer.POS_Y)));

        return filter;
    }

    @Override
    public List<Filter> getTopFilters(TopDocs hits, SetEvaluation setEval, ScoringFunction sf, int k) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
