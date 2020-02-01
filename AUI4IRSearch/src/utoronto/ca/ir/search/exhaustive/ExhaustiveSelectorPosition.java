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
package utoronto.ca.ir.search.exhaustive;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.lucene.document.Document;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.TopDocs;
import utoronto.ca.ir.evaluation.SetEvaluation;
import utoronto.ca.ir.indexing.Indexer;
import utoronto.ca.ir.scoring.ScoringFunction;
import utoronto.ca.ir.search.SetSelector;

/**
 * This class implements the brute force method for position.
 *
 * @author rbouadjenek
 */
public class ExhaustiveSelectorPosition extends ExhaustiveSelector {

    public ExhaustiveSelectorPosition(String indexDir, double rate_malicious) throws IOException {
        super(indexDir, rate_malicious);
    }

    public ExhaustiveSelectorPosition(IndexSearcher is, Map<String, Double> malicious) {
        super(is, malicious);
    }

    public List<Document> getOptimalSet(TopDocs hits, SetEvaluation setEval, ScoringFunction sf) throws Exception {
        List<List<Document>> all = new ArrayList<>();
        List<Document> docSet = TopDocs2List(hits);
        List<Document> copy1 = orderList(docSet, Indexer.POS_X, SetSelector.ASC);
        while (!copy1.isEmpty()) {
            List<Document> copy2 = orderList(copy1, Indexer.POS_X, SetSelector.ASC);
            while (!copy2.isEmpty()) {
                List<Document> copy3 = orderList(copy2, Indexer.POS_Y, SetSelector.ASC);
                while (!copy3.isEmpty()) {
                    List<Document> copy4 = orderList(copy3, Indexer.POS_Y, SetSelector.ASC);
                    while (!copy4.isEmpty()) {
                        all.add(new ArrayList<>(copy4));
                        copy4.remove(copy4.size() - 1);
                    }
                    copy3.remove(0);
                }
                copy2.remove(copy2.size() - 1);
            }
            copy1.remove(0);
        }
        return getBest(all, sf, setEval);
    }

    @Override
    public List<Filter> getTopFilters(TopDocs hits, SetEvaluation setEval, ScoringFunction sf, int k) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Filter getOptimalFilter(TopDocs hits, SetEvaluation setEval, ScoringFunction sf) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
