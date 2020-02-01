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
package utoronto.ca.ir.evaluation;

import java.util.List;
import utoronto.ca.ir.scoring.ScoringFunction;

/**
 * This class implements a SetEvaluation metric based on the Precision.
 *
 * @author rbouadjenek
 */
public class SetPrecision extends SetEvaluation {

    public SetPrecision(List<String> docSet) {
        super(docSet);
    }

    /**
     * This is supposed to compute the Soft precision value for the set.
     *
     * @param docSubSet
     * @param sf
     * @return
     */
    @Override
    public double getExpectedSetScore(List<String> docSubSet, ScoringFunction sf) {
        double sum = 0.0;
        for (String docid : docSubSet) {
            sum += sf.getScore(docid);
        }
        return sum / docSubSet.size();
    }

    @Override
    public double getRealSetScore(List<String> docSubSet, ScoringFunction sf) {
        if (docSubSet.isEmpty()) {
            return 0;
        }
        double sum = 0.0;
        for (String docid : docSubSet) {
            if (sf.getGroundTruthRelevance(docid)) {
                sum++;
            }
        }
        return sum / docSubSet.size();
    }

    @Override
    public void recomputeC(ScoringFunction sf) {
    }

    @Override
    public SetPrecision clone() throws CloneNotSupportedException {
        return new SetPrecision(docSet);
    }
}
