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
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.DoubleStream;
import org.apache.lucene.document.Document;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.TopDocs;
import utoronto.ca.ir.evaluation.SetEvaluation;
import utoronto.ca.ir.evaluation.SetF1_Score;
import utoronto.ca.ir.indexing.Indexer;
import utoronto.ca.ir.scoring.NoisyGroundTruth;
import utoronto.ca.ir.scoring.ScoringFunction;
import utoronto.ca.ir.search.SetSelector;
import unimelb.edu.au.tools.Functions;

/**
 * This method implements the Gurobi-based selector that combines all filters.
 * It is based on the Yihao's code, translated by Reda from Python to Java.
 * Please contact him for more information (Yihao Du
 * <duyihao@mie.utoronto.ca>).
 *
 * @author rbouadjenek
 */
public class GurobiSelectorAll extends GurobiSelector {

    public GurobiSelectorAll(IndexSearcher is, Map<String, Double> malicious) {
        super(is, malicious);
    }

    public GurobiSelectorAll(String indexDir, double rate_malicious) throws IOException {
        super(indexDir, rate_malicious);
    }

    @Override
    public Filter getOptimalFilter(TopDocs hits, SetEvaluation setEval, ScoringFunction sf) throws Exception {
        List<Document> docSet = orderList(TopDocs2List(hits), Indexer.DATE_STORE, ASC);
        Map<String, Document> map = List2Map(docSet);

        /**
         * Initialization.
         */
        List<String>[] doc2keywords = new ArrayList[(int) hits.totalHits];
        List<String> topTerms = getTopTermByFreq(hits, topTerm);
        for (int i = 0; i < hits.totalHits; i++) {
            Document doc = is.getIndexReader().document(hits.scoreDocs[i].doc);
            List<String> docKeywords = getDocKeywords(hits.scoreDocs[i].doc);
            docKeywords.retainAll(topTerms);

            doc2keywords[docSet.indexOf(map.get(doc.get(Indexer.MID)))] = docKeywords;
        }
        Filter filter = this.getOptimalFilter(docSet, doc2keywords, setEval, sf);
        return filter;
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
        if (setEval instanceof SetF1_Score) {
            return f1_ScoreOptimization(list, sf, doc2keywords);
        } else {
            return null;
        }
    }

    /**
     * This method implements Yihao's python code for f1-score with keyword
     * filter.
     *
     * @param list
     * @param sf
     * @param doc2keywords
     * @return
     * @throws Exception
     */
    public Filter f1_ScoreOptimization(List<Document> list, ScoringFunction sf, List<String>[] doc2keywords) throws Exception {
        /**
         * Mappings.
         */
        List<Document> list_pos_x = orderList(list, Indexer.POS_X, SetSelector.ASC);
        List<Document> list_pos_y = orderList(list, Indexer.POS_Y, SetSelector.ASC);
        Integer[] xe = new Integer[list.size()];
        Integer[] ye = new Integer[list.size()];

        double s[] = new double[list.size()];
        double email[] = new double[list.size()];
        Long time[] = new Long[list.size()];
        for (int i = 0; i < email.length; i++) {
            Document doc = list.get(i);
            s[i] = sf.getScore(doc.get(Indexer.MID));
            email[i] = i;
            time[i] = Long.parseLong(doc.get(Indexer.DATE_STORE));

            xe[i] = list_pos_x.indexOf(doc);
            ye[i] = list_pos_y.indexOf(doc);
        }
        Integer[] t = new Integer[time.length];
        for (int i = 0; i < t.length; i++) {
            t[i] = i;
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
        double[] lb = new double[email.length];
        Arrays.fill(lb, 0);
        double[] ub_B = new double[email.length];
        Arrays.fill(ub_B, 1);
        double[] ub_C = new double[email.length];
        Arrays.fill(ub_C, GRB.INFINITY);

        double[] lb_ = new double[dict.length];
        Arrays.fill(lb_, 0);
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
        String isVar[] = new String[email.length];
        String ieVar[] = new String[email.length];

        String[] nameIw = new String[dict.length];

        String IxsVar[] = new String[email.length];
        String IxlVar[] = new String[email.length];
        String IysVar[] = new String[email.length];
        String IylVar[] = new String[email.length];
        for (int i = 0; i < email.length; i++) {
            nameW[i] = "Weight[" + i + "]";
            nameI[i] = "Indication[" + i + "]";
            isVar[i] = "Is-Var[" + i + "]";
            ieVar[i] = "Ie-Var[" + i + "]";
            IxsVar[i] = "Ixs-Var[" + i + "]";
            IxlVar[i] = "Ixl-Var[" + i + "]";
            IysVar[i] = "Iys-Var[" + i + "]";
            IylVar[i] = "Iyl-Var[" + i + "]";
        }
        for (int i = 0; i < dict.length; i++) {
            nameIw[i] = "word_Indication[" + i + "]";
        }

        /**
         * Create variables.
         */
//        w = model.addVars(Email, lb=0.0, ub =1.0, vtype='C', name = 'Weight')
        GRBVar[] w = model.addVars(lb, ub_B, email, C, nameW);
//        I = model.addVars(Email, lb=0.0, ub =1.0, vtype='B', name = 'Indication')
        GRBVar[] I = model.addVars(lb, ub_B, email, B, nameI);
//        u = model.addVar(lb=0.0, ub =1.0, vtype='C', name = 'Sum_Indication')
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
         * Create keyword variables.
         */
//        Iw = model.addVars(dic, vtype='B', name = 'word_Indication')
        GRBVar[] Iw = model.addVars(lb_, ub_B_, dict, B_, nameIw);
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
         * Time bounds.
         */
//            model.addConstr(ts <= te, 'start <= end')
        model.addConstr(ts, GRB.LESS_EQUAL, te, "start<=end");

        /**
         * Position bounds.
         */
//            model.addConstr(xmin <= xmax, 'xmin <= xmax')
        model.addConstr(xmin, GRB.LESS_EQUAL, xmax, "xmin<=xmax");
//            model.addConstr(ymin <= ymax, 'ymin <= xmax')
        model.addConstr(ymin, GRB.LESS_EQUAL, ymax, "xmax<=ymin");

        /**
         * Weight-Sum constraints.
         */
//        model.addConstr(quicksum(w[i] for i in range(10))+u*C == 1.0, 'sum(w)+uC=1')
        GRBLinExpr exprConst = new GRBLinExpr();
        exprConst.addTerms(ub_B, w);
        exprConst.addTerm(c, u);
        model.addConstr(exprConst, GRB.EQUAL, 1, "Sum(w)+uC=1");

        /**
         * Constraints.
         */
        for (int i = 0; i < email.length; i++) {
//            model.addConstr(w[i] <= u, 'w[i] <= u')
            model.addConstr(w[i], GRB.LESS_EQUAL, u, "w[" + i + "]<=u");
//            model.addConstr(w[i] <= 1e4*Ie[i], 'w[i] <= M*I(i)')
            GRBLinExpr expr1 = new GRBLinExpr();
            expr1.addTerm(M, I[i]);
            model.addConstr(w[i], GRB.LESS_EQUAL, expr1, "w[" + i + "]<=M*I(" + i + ")");
//            model.addConstr(w[i] >= u-1e4*(1-Ie[i]),'w[i] >= u - M*[1-I(i)]')
            GRBLinExpr expr2 = new GRBLinExpr();
            expr2.addTerm(1, u);
            expr2.addConstant(-M);
            expr2.addTerm(M, I[i]);
            model.addConstr(w[i], GRB.GREATER_EQUAL, expr2, "w[" + i + "]>=u-M*[1-I(" + i + ")]");
//            model.addConstr(w[i] >= 0.0, 'Weight-positive')
            model.addConstr(w[i], GRB.GREATER_EQUAL, 0.0, "Weight-positive[" + i + "]");

//            model.addGenConstrAnd(I[i], new GRBVar[]{Ixs[i], Ixl[i], Iys[i], Iyl[i],Is[i], Ie[i]}, "Con[" + i + "]");
            /**
             * Time constraints.
             */
//          model.addGenConstrAnd(I[i], [Is[i], Ie[i]], "TimeCon")
//            model.addGenConstrAnd(I[i], new GRBVar[]{Is[i], Ie[i]}, "TimeCon[" + i + "]");
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

            /**
             * Keyword constraints.
             */
//            model.addGenConstrOr(I[i], [Iw[word] for word in E2words[i]], "keyword_Email_Con")
            GRBVar[] v = new GRBVar[doc2keywords[i].size() + 6];
            for (int j = 0; j < doc2keywords[i].size(); j++) {
                int h = dictList.indexOf(doc2keywords[i].get(j));
                v[j] = Iw[h];
            }
//            model.addGenConstrAnd(I[i], v, "keyword_Email_Con[" + i + "]");
            v[doc2keywords[i].size()] = Ixs[i];
            v[doc2keywords[i].size() + 1] = Ixl[i];
            v[doc2keywords[i].size() + 2] = Iys[i];
            v[doc2keywords[i].size() + 3] = Iyl[i];
            v[doc2keywords[i].size() + 4] = Is[i];
            v[doc2keywords[i].size() + 5] = Ie[i];
            model.addGenConstrAnd(I[i], v, "Con[" + i + "]");
            /**
             * Position constraints.
             */
//          model.addGenConstrAnd(z[i], [Ixs[i], Ixl[i], Iys[i], Iyl[i]], "PosCon")
//            model.addGenConstrAnd(I[i], new GRBVar[]{Ixs[i], Ixl[i], Iys[i], Iyl[i]}, "PosCon[" + i + "]");
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
//        model.write("./f1-score_All.lp");

        /**
         * Print solution.
         */
//        printSolution(model, w, I, Iw, u);
        /**
         * Add time query.
         */
        double l1 = (double) ts.get(GRB.DoubleAttr.X);
        double l2 = (double) te.get(GRB.DoubleAttr.X);
        int idx1 = (int) Math.round(l1);
        int idx2 = (int) Math.round(l2);
        /**
         * Add position query.
         */
        l1 = (double) xmin.get(GRB.DoubleAttr.X);
        l2 = (double) ymin.get(GRB.DoubleAttr.X);

        double l3 = (double) xmax.get(GRB.DoubleAttr.X);
        double l4 = (double) ymax.get(GRB.DoubleAttr.X);

        int idx3 = (int) Math.round(l1);
        int idx4 = (int) Math.round(l2);

        int idx5 = (int) Math.round(l3);
        int idx6 = (int) Math.round(l4);

        /**
         * Add keywords query.
         */
//        System.out.println(Iw.length);
        List<String> keywords = new ArrayList<>();
        for (int i = 0; i < Iw.length; ++i) {
            if (Iw[i].get(GRB.DoubleAttr.X) == 0) {
                keywords.add(dictList.get(i));
            }
        }

        SetF1_Score se = new SetF1_Score(getIds(list), sf);
        List<Document> outList = new ArrayList<>();
        for (int i = 0; i < I.length; i++) {
            if (I[i].get(GRB.DoubleAttr.X) == 1) {
                outList.add(list.get(i));
            }
        }

        Filter filter = new Filter(list, outList, se.getExpectedSetScore(getIds(outList), sf), keywords, time[idx1], time[idx2],
                Double.parseDouble(list_pos_x.get(idx3).get(Indexer.POS_X)),
                Double.parseDouble(list_pos_x.get(idx5).get(Indexer.POS_X)),
                Double.parseDouble(list_pos_y.get(idx4).get(Indexer.POS_Y)),
                Double.parseDouble(list_pos_y.get(idx6).get(Indexer.POS_Y)));

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

    /**
     * @param args the command line arguments
     * @throws java.lang.Exception
     */
    public static void main(String[] args) throws Exception {
        // TODO code application logic here
        GurobiSelectorAll selector1 = new GurobiSelectorAll("/Users/rbouadjenek/Documents/AUI4IR_data/raw_enron_index_v1.0/", 50);
        List<String> ids = selector1.getData(20);
        Query q = selector1.getIdsFilter(ids);
        TopDocs hits1 = selector1.executeFilter(q);
        ScoringFunction sf = new NoisyGroundTruth(selector1.malicious, 1);
        SetEvaluation se = new SetF1_Score(selector1.getIds(hits1), sf);
        long start = System.currentTimeMillis();
        Query query = selector1.filterToQuery(selector1.getTopFilters(hits1, se, sf, 1).get(0));
        System.out.println(query);
        long end = System.currentTimeMillis();
        TopDocs hits2 = selector1.executeFilter(query);
        System.out.println("The size of the initial list is:" + hits1.totalHits + " and it has a SetEvaluation value= " + se.getExpectedSetScore(selector1.getIds(hits1), sf) + ".");
        System.out.println("The size of the list returned is: " + hits2.totalHits + " and it has a SetEvaluation value= " + se.getExpectedSetScore(selector1.getIds(hits2), sf) + ".");
        System.out.println("-------------------------------------------------------------------------");
        long millis = (end - start);
        System.out.println("The Combined Gurobi Algoritm took: " + Functions.getTimer(millis) + ".");
        System.out.println("-------------------------------------------------------------------------");

//        GurobiSelectorKeyword selector2 = new GurobiSelectorKeyword(selector1.is, selector1.malicious, selector1.perm);
//        start = System.currentTimeMillis();
//        query = selector2.getOptimalFilter(hits1, se, sf);
//        end = System.currentTimeMillis();
////        System.out.println(query);
//        hits2 = selector2.executeFilter(query);
//        System.out.println("The size of the initial list is:" + hits1.totalHits + " and it has a SetEvaluation value= " + se.getSetScore(selector2.getIds(hits1), sf) + ".");
//        System.out.println("The size of the list returned is: " + hits2.totalHits + " and it has a SetEvaluation value= " + se.getSetScore(selector2.getIds(hits2), sf) + ".");
//        System.out.println("-------------------------------------------------------------------------");
//        millis = (end - start);
//        System.out.println("The  Gurobi Keyword-based Algoritm took: " + Functions.getTimer(millis) + ".");
//        System.out.println("-------------------------------------------------------------------------");
//
//        GurobiSelectorTime selector3 = new GurobiSelectorTime(selector1.is, selector1.malicious, selector1.perm);
//        start = System.currentTimeMillis();
//        query = selector3.getOptimalFilter(hits1, se, sf);
//        end = System.currentTimeMillis();
////        System.out.println(query);
//        hits2 = selector3.executeFilter(query);
//        System.out.println("The size of the initial list is:" + hits1.totalHits + " and it has a SetEvaluation value= " + se.getSetScore(selector3.getIds(hits1), sf) + ".");
//        System.out.println("The size of the list returned is: " + hits2.totalHits + " and it has a SetEvaluation value= " + se.getSetScore(selector3.getIds(hits2), sf) + ".");
//        System.out.println("-------------------------------------------------------------------------");
//        millis = (end - start);
//        System.out.println("The  Gurobi Time-based Algoritm took: " + Functions.getTimer(millis) + ".");
//        System.out.println("-------------------------------------------------------------------------");
//
//        GurobiSelectorPosition selector4 = new GurobiSelectorPosition(selector1.is, selector1.malicious, selector1.perm);
//        start = System.currentTimeMillis();
//        query = selector4.getOptimalFilter(hits1, se, sf);
//        end = System.currentTimeMillis();
////        System.out.println(query);
//        hits2 = selector4.executeFilter(query);
//        System.out.println("The size of the initial list is:" + hits1.totalHits + " and it has a SetEvaluation value= " + se.getSetScore(selector4.getIds(hits1), sf) + ".");
//        System.out.println("The size of the list returned is: " + hits2.totalHits + " and it has a SetEvaluation value= " + se.getSetScore(selector4.getIds(hits2), sf) + ".");
//        System.out.println("-------------------------------------------------------------------------");
//        millis = (end - start);
//        System.out.println("The  Gurobi Position-based Algoritm took: " + Functions.getTimer(millis) + ".");
//        System.out.println("-------------------------------------------------------------------------");
    }

}
