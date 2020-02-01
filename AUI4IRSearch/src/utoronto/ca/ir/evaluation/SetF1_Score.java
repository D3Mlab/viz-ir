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
 * This class implements a SetEvaluation metric based on the F1-Score.
 *
 * @author rbouadjenek
 */
public class SetF1_Score extends SetEvaluation {

    private final double beta;

    /**
     * Initialize the F1-Score.
     *
     * @param docSet
     * @param sf
     */
    public SetF1_Score(List<String> docSet, ScoringFunction sf) {
        super(docSet);
        this.beta = 1;
        c = 0;
        for (String docid : docSet) {
            c += sf.getScore(docid);
        }
    }

    /**
     * Initialize F-beta-Score.
     *
     * @param docSet
     * @param sf
     * @param beta value for f1-score.
     */
    public SetF1_Score(List<String> docSet, ScoringFunction sf, double beta) {
        super(docSet);
        this.beta = beta;
        c = 0;
        for (String docid : docSet) {
            c += sf.getScore(docid);
        }
    }

    /**
     * Initialize the F1-Score.
     *
     */
    private SetF1_Score(List<String> docSet, double beta, double c) {
        super(docSet);
        this.beta = beta;
        this.c = c;
    }

    @Override
    public void recomputeC(ScoringFunction sf) {
        c = 0;
        for (String docid : docSet) {
            c += sf.getScore(docid);
        }
    }

    @Override
    public double getExpectedSetScore(List<String> docSubSet, ScoringFunction sf) {
        double sum = 0.0;
        for (String docid : docSubSet) {
            sum += sf.getScore(docid);
        }
        double p = sum / docSubSet.size();
        double r = sum / c;
        if (p != 0 && r != 0) {
            return (1 + Math.pow(beta, 2)) * ((p * r) / ((Math.pow(beta, 2) * p) + r));
        } else {
            return 0.0;
        }
    }

    @Override
    public double getRealSetScore(List<String> docSubSet, ScoringFunction sf) {
        if (docSubSet.isEmpty()) {
            return 0;
        }
        double sum = 0.0;
        double c = 0.0;
        for (String docid : docSubSet) {
            if (sf.getGroundTruthRelevance(docid)) {
                sum++;
            }
        }
        double p = sum / docSubSet.size();
        for (String docid : docSet) {
            if (sf.getGroundTruthRelevance(docid)) {
                c++;
            }
        }
        double r = sum / c;
        if (p != 0 && r != 0 && c != 0) {
            double v1 = (1 / p);
            double v2 = (1 / r);
            return 2 / (v1 + v2);
        } else {
            return 0.0;
        }
    }

    @Override
    public SetF1_Score clone() throws CloneNotSupportedException {
        return new SetF1_Score(docSet, beta, c);
    }

}
