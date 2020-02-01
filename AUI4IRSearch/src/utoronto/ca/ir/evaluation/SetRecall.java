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
 * This class implements a SetEvaluation metric based on the Recall.
 *
 * @author rbouadjenek
 */
public class SetRecall extends SetEvaluation {

    public SetRecall(List<String> docSet, ScoringFunction sf) {
        super(docSet);
        c = 0;
        for (String docid : docSet) {
            c += sf.getScore(docid);
        }
    }

    private SetRecall(List<String> docSet, double c) {
        super(docSet);
        this.c = c;
    }

    @Override
    public double getExpectedSetScore(List<String> docSubSet, ScoringFunction sf) {
        double sum = 0.0;
        for (String docid : docSubSet) {
            sum += sf.getScore(docid);
        }
        return sum / c;
    }

    @Override
    public double getRealSetScore(List<String> docSubSet, ScoringFunction sf) {
        double sum = 0.0;
        double c = 0.0;
        for (String docid : docSubSet) {
            if (sf.getGroundTruthRelevance(docid)) {
                sum++;
            }
        }
        for (String docid : docSet) {
            if (sf.getGroundTruthRelevance(docid)) {
                c++;
            }
        }
        if (c == 0) {
            return 0;
        }
        return sum / c;
    }

    @Override
    public void recomputeC(ScoringFunction sf) {
        c = 0;
        for (String docid : docSet) {
            c += sf.getScore(docid);
        }
    }

    @Override
    public SetRecall clone() throws CloneNotSupportedException {
        return new SetRecall(docSet, c);
    }
}
