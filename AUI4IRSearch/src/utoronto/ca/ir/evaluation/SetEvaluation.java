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
 * This class represents Set Evaluation metrics given the implementation of
 * getSetScore.
 *
 * @author rbouadjenek
 */
public abstract class SetEvaluation {

    public final List<String> docSet;
    double c; // sum of scores

    public SetEvaluation(List<String> docSet) {
        this.docSet = new ArrayList<>(docSet);
    }

    /**
     * This method computes the expected set evaluation score given a scoring
     * function.
     *
     * @param docSubSet
     * @param sf
     * @return
     */
    public abstract double getExpectedSetScore(List<String> docSubSet, ScoringFunction sf);

    /**
     * This method computes the real set evaluation score given a scoring
     * function.
     *
     * @param docSubSet
     * @param sf
     * @return
     */
    public abstract double getRealSetScore(List<String> docSubSet, ScoringFunction sf);

    /**
     * This methods update the sum of scores given a scoring function sf.
     *
     * @param sf
     */
    public abstract void recomputeC(ScoringFunction sf);

    @Override
    public abstract SetEvaluation clone() throws CloneNotSupportedException;

}
