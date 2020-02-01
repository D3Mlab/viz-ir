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
import java.util.List;
import java.util.Map;
import org.apache.lucene.document.Document;
import org.apache.lucene.search.IndexSearcher;
import utoronto.ca.ir.evaluation.SetEvaluation;
import utoronto.ca.ir.scoring.ScoringFunction;
import utoronto.ca.ir.search.SetSelector;

/**
 *
 * @author rbouadjenek
 */
public abstract class ExhaustiveSelector extends SetSelector {

    public ExhaustiveSelector(IndexSearcher is, Map<String, Double> malicious) {
        super(is, malicious);
    }

    public ExhaustiveSelector(String indexDir, double rate_malicious) throws IOException {
        super(indexDir, rate_malicious);
    }

    public List<Document> getBest(List<List<Document>> all, ScoringFunction sf, SetEvaluation se) {
        all.sort((List<Document> l1, List<Document> l2) -> {
            try {
                double list1_eval = se.getExpectedSetScore(getIds(l1), sf);
                double list2_eval = se.getExpectedSetScore(getIds(l2), sf);
                return Double.compare(list2_eval, list1_eval);
            } catch (Exception ex) {
                return -1;
            }
        }
        );
        return all.get(0);
    }

}
