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
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author rbouadjenek
 */
public class ScoringFunction implements Cloneable {

    public Map<String, Double> malicious;
    public Set<String> groundTruth = new HashSet<>();

    public ScoringFunction(Map<String, Double> malicious) {
        this.malicious = new HashMap<>(malicious);
        for (String id : malicious.keySet()) {
            if (malicious.get(id) > 0) {
                groundTruth.add(id);
            }
        }
    }

    @Override
    public ScoringFunction clone() throws CloneNotSupportedException {
        return new ScoringFunction(malicious);
    }

    public double getScore(String id) {
        if (malicious.containsKey(id)) {
            return malicious.get(id);
        } else {
            return 0;
        }
    }

    /**
     * Return the ground truth of a given document.
     *
     * @param id
     * @return
     */
    final public boolean getGroundTruthRelevance(String id) {
        return groundTruth.contains(id);
    }
}
