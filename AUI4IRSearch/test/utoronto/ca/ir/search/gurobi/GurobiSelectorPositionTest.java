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

import java.util.List;
import org.apache.lucene.document.Document;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.TopDocs;
import org.junit.Test;
import static org.junit.Assert.*;
import utoronto.ca.ir.evaluation.SetEvaluation;
import utoronto.ca.ir.evaluation.SetF1_Score;
import utoronto.ca.ir.indexing.Indexer;
import utoronto.ca.ir.scoring.ScoringFunction;
import utoronto.ca.ir.search.SetSelector.Filter;
import utoronto.ca.ir.search.exhaustive.ExhaustiveSelectorPosition;

/**
 * This test class allows to test the GurobiSelectorPosition class.
 *
 * @author rbouadjenek
 */
public class GurobiSelectorPositionTest {

    /**
     * Test of class GurobiSelectorTime.
     *
     * @throws java.lang.Exception
     */
    @Test
    public void testGurobiSelectorTimeTest() throws Exception {
        System.out.println("f1_ScoreOptimization");
        GurobiSelectorPosition selector1 = new GurobiSelectorPosition("/media/Storage/reda/Documents/AUI4IR_data/raw_enron_index_v1.0/", 20);
        ExhaustiveSelectorPosition selector2 = new ExhaustiveSelectorPosition(selector1.is, selector1.malicious);
        selector2.perm = selector1.perm;
        for (int i = 0; i < 50; i++) {
            List<String> ids = selector1.getRandomData(20);
            Query q = selector1.getIdsFilter(ids);
            TopDocs hits1 = selector1.executeFilter(q);
            ScoringFunction sf = new ScoringFunction(selector1.malicious);
            SetEvaluation se = new SetF1_Score(selector1.getIds(hits1), sf);
            Filter filter = selector1.getOptimalFilter(hits1, se, sf);
            List<Document> result = filter.getOutList();
//            System.out.println(query);
            List<Document> expResult = selector2.getOptimalSet(hits1, se, sf);

            System.out.println(selector1.filterToQuery(filter));
            System.out.println("*********************************");
            System.out.println("*********** Test " + i + " ************");
            System.out.println("*********************************");
            System.out.print("S=[");
            for (Document d : selector1.TopDocs2List(hits1)) {
                String id = d.get(Indexer.MID);
                if (selector1.malicious.get(id) > 0) {
                    System.out.print(1 + ",");
                } else {
                    System.out.print(0 + ",");
                }
            }
            System.out.println("]");
            System.out.println(" Hits:");
            System.out.print("[");
            for (Document d : selector1.TopDocs2List(hits1)) {
                String id = d.get(Indexer.MID);
                System.out.print("(" + id + "," + selector1.malicious.get(id) + ")");
            }
            System.out.println("]-> " + se.getExpectedSetScore(selector1.getIds(selector1.TopDocs2List(hits1)), sf));
            System.out.println("result: ");
            System.out.print("[");
            for (Document d : result) {
                String id = d.get(Indexer.MID);
                System.out.print("(" + id + "," + selector1.malicious.get(id) + ")");
            }
            System.out.println("]-> " + se.getExpectedSetScore(selector1.getIds(result), sf));
            System.out.println("expResult: ");

            System.out.print("[");
            for (Document d : expResult) {
                String id = d.get(Indexer.MID);
                System.out.print("(" + id + "," + selector1.malicious.get(id) + ")");
            }
            System.out.println("]-> " + se.getExpectedSetScore(selector1.getIds(expResult), sf));

//            System.out.println("Gnutplot data");
//            for (Document doc : selector.TopDocs2List(hits1)) {
//                System.out.print(doc.get(Indexer.POS_X) + "\t" + doc.get(Indexer.POS_Y) + "\t");
//                if (selector.malicious.get(doc.get(Indexer.MID))) {
//                    System.out.println("1");
//                } else {
//                    System.out.println("0");
//                }
//            }
//            for (Document doc : expResult) {
//                System.out.println(doc.get(Indexer.POS_X) + "\t" + doc.get(Indexer.POS_Y) + "\t1\t" + selector.malicious.get(doc.get(Indexer.MID)));
//            }
//            double min_x = Double.MAX_VALUE, min_y = Double.MAX_VALUE,
//                    max_x = Double.MIN_VALUE, max_y = Double.MIN_VALUE;
//
//            for (Document doc : expResult) {
//                double xVal = Double.parseDouble(doc.get(Indexer.POS_X));
//                double yVal = Double.parseDouble(doc.get(Indexer.POS_Y));
//                if (min_x > xVal) {
//                    min_x = xVal;
//                }
//                if (min_y > yVal) {
//                    min_y = yVal;
//                }
//                if (max_x < xVal) {
//                    max_x = xVal;
//                }
//                if (max_y < yVal) {
//                    max_y = yVal;
//                }
//            }
//
//            System.out.println("set obj rect from " + min_x + ", " + min_y + " to " + max_x + ", " + max_y + " fc lt 2 fillstyle pattern 5");
//            min_x = Double.MAX_VALUE;
//            min_y = Double.MAX_VALUE;
//            max_x = Double.MIN_VALUE;
//            max_y = Double.MIN_VALUE;
//            for (Document doc : result) {
//                double xVal = Double.parseDouble(doc.get(Indexer.POS_X));
//                double yVal = Double.parseDouble(doc.get(Indexer.POS_Y));
//                if (min_x > xVal) {
//                    min_x = xVal;
//                }
//                if (min_y > yVal) {
//                    min_y = yVal;
//                }
//                if (max_x < xVal) {
//                    max_x = xVal;
//                }
//                if (max_y < yVal) {
//                    max_y = yVal;
//                }
//            }
//
//            System.out.println("set obj rect from " + min_x + ", " + min_y + " to " + max_x + ", " + max_y + " fc lt 1 fillstyle pattern 4");
            assertTrue(se.getExpectedSetScore(selector1.getIds(expResult), sf) == se.getExpectedSetScore(selector1.getIds(result), sf));
//            System.out.println("*********************************");

        }
    }

}
