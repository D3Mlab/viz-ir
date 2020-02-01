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
import utoronto.ca.ir.search.exhaustive.ExhaustiveSelectorKeywords;

/**
 * This test class allows to test the GurobiSelectorTime class.
 *
 * @author rbouadjenek
 */
public class GurobiSelectorKeywordTest {

    /**
     * Test of class GurobiSelectorTime.
     *
     * @throws java.lang.Exception
     */
    @Test
    public void testGurobiSelectorKeywordTest() throws Exception {
        System.out.println("f1_ScoreOptimization");
        GurobiSelectorKeyword selector1 = new GurobiSelectorKeyword("/media/Storage/reda/Documents/AUI4IR_data/raw_enron_index_v1.0/", 50);
        ExhaustiveSelectorKeywords selector2 = new ExhaustiveSelectorKeywords(selector1.is, selector1.malicious);
        selector2.perm = selector1.perm;
        for (int i = 0; i < 100; i++) {
            List<String> ids = selector1.getRandomData(3);
            Query q = selector1.getIdsFilter(ids);
            TopDocs hits1 = selector1.executeFilter(q);
            ScoringFunction sf = new ScoringFunction(selector1.malicious);
            SetEvaluation se = new SetF1_Score(selector1.getIds(hits1), sf);
            List<Document> result = selector1.getOptimalFilter(hits1, se, sf).getOutList();
            List<Document> expResult = selector2.getOptimalSet(hits1, se, sf);
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
            System.out.print("t=[");
            for (Document d : selector1.TopDocs2List(hits1)) {
                String date = d.get(Indexer.DATE_STORE);
//                System.out.print(date + ",");
            }
            System.out.println("]");
            System.out.println(" Hits:");
            System.out.print("[");
            for (Document d : selector1.TopDocs2List(hits1)) {
                String id = d.get(Indexer.MID);
                String date = d.get(Indexer.DATE_STORE);
                System.out.print("(" + id + "," + selector1.malicious.get(id) + ")");
            }
            System.out.println("] ");
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

            assertTrue(se.getExpectedSetScore(selector1.getIds(expResult), sf) == se.getExpectedSetScore(selector1.getIds(result), sf));
            System.out.println("*********************************");

        }
    }

}
