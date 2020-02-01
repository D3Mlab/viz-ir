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
package utoronto.ca.ir.search.apriori;

import java.io.IOException;
import java.util.List;
import org.apache.lucene.search.TopDocs;
import utoronto.ca.ir.evaluation.SetEvaluation;
import utoronto.ca.ir.scoring.ScoringFunction;
import utoronto.ca.ir.search.SetSelector;

/**
 *
 * @author rbouadjenek
 */
public class AprioriSelector extends SetSelector {

    public AprioriSelector(String indexDir) throws IOException {
        super(indexDir);
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
