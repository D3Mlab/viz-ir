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

import java.util.ArrayList;
import java.util.List;
import utoronto.ca.ir.scoring.ScoringFunction;

/**
 * This class implements a SetEvaluation metric based on the Average Precision.
 *
 * @author rbouadjenek
 */
public class SetAvePrevision extends SetEvaluation {

    public SetAvePrevision(List<String> docSet) {
        super(docSet);
    }

    /**
     * This method computes soft AVG Precision value for the set.
     *
     * @param docSubSet
     * @param sf
     * @return
     */
    @Override
    public double getExpectedSetScore(List<String> docSubSet, ScoringFunction sf) {
        double sum = 0.0;
        SetPrecision softP = new SetPrecision(docSubSet);
        List<String> k_emailSet = new ArrayList<>();
        for (String docid : docSubSet) {
            k_emailSet.add(docid);
            sum += softP.getExpectedSetScore(k_emailSet, sf) * sf.getScore(docid);
        }
        return sum / docSubSet.size();
    }

    @Override
    public double getRealSetScore(List<String> docSubSet, ScoringFunction sf) {
        double sum = 0.0;
        SetPrecision softP = new SetPrecision(docSubSet);
        List<String> k_emailSet = new ArrayList<>();
        for (String docid : docSubSet) {
            k_emailSet.add(docid);
            sum += softP.getRealSetScore(k_emailSet, sf) * sf.getScore(docid);
        }
        return sum / docSubSet.size();
    }

    @Override
    public void recomputeC(ScoringFunction sf) {
    }

    @Override
    public SetAvePrevision clone() throws CloneNotSupportedException {
        return new SetAvePrevision(docSet);
    }
}
