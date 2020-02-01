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
import static utoronto.ca.ir.search.SetSelector.ASC;

/**
 * This class implements the brute force search method using time.
 *
 * @author rbouadjenek
 */
public class ExhaustiveSelectorTime extends ExhaustiveSelector {

    public ExhaustiveSelectorTime(String indexDir, double rate_malicious) throws IOException {
        super(indexDir, rate_malicious);
    }

    public ExhaustiveSelectorTime(IndexSearcher is, Map<String, Double> malicious) {
        super(is, malicious);
    }

    public List<Document> getOptimalSet(TopDocs hits, SetEvaluation setEval, ScoringFunction sf) throws Exception {
        List<List<Document>> all = new ArrayList<>();
        List<Document> docSet = TopDocs2List(hits);
        docSet = orderList(docSet, Indexer.DATE_STORE, ASC);
        for (int i = 0; i < docSet.size(); i++) {
            List<Document> l = new ArrayList<>();
            for (int j = i; j < docSet.size(); j++) {
                Document d = docSet.get(j);
                l.add(d);
                List<Document> copy = new ArrayList<>(l);
                all.add(copy);
            }
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
