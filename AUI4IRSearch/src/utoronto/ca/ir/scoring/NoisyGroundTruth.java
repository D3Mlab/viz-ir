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
package utoronto.ca.ir.scoring;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/**
 *
 * @author rbouadjenek
 */
public class NoisyGroundTruth extends ScoringFunction {

    public Map<String, Double> randomValues;// the score are pre-cached.
    public double lambda;

    public NoisyGroundTruth(Map<String, Double> malicious, double lambda) {
        super(malicious);
        this.lambda = lambda;
        randomValues = new HashMap<>();
        malicious.keySet().stream().forEach((id) -> {
            Random u = new Random();
            randomValues.put(id, u.nextDouble());
        });
    }

    @Override
    public double getScore(String id) {
        // Score = lamda*r+(1-lamda)*u
        // Malicious email: r = 1.0; Normail email: r = 0.0;
        // u: uniform(0, 1)
        double u = randomValues.get(id);
        double rel = 0;
        if (!malicious.containsKey(id)) {
        } else if (malicious.get(id) == 0) {
        } else {
            rel = 1.0;
        }
        return lambda * rel + (1 - lambda) * u;
    }

    public double getLambda() {
        return lambda;
    }

    public void setLambda(double lambda) {
        this.lambda = lambda;
    }

    @Override
    public NoisyGroundTruth clone() throws CloneNotSupportedException {
        NoisyGroundTruth sf = new NoisyGroundTruth(malicious, lambda);
        sf.randomValues = new HashMap<>(randomValues);
        return sf; //To change body of generated methods, choose Tools | Templates.
    }

}
