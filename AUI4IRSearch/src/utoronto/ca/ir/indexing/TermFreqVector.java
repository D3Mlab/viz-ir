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
package utoronto.ca.ir.indexing;

import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.apache.lucene.index.Terms;
import org.apache.lucene.index.TermsEnum;
import org.apache.lucene.util.BytesRef;

/**
 * This method allows to extract a term frequency vector for a given document of
 * the index.
 *
 * @author rbouadjenek
 */
public class TermFreqVector {

    private final Map<String, Integer> TermFreqVector;

    public TermFreqVector(Terms terms) throws IOException {
        TermFreqVector = new HashMap<>();
        if (terms != null && terms.size() > 0) {
            TermsEnum termsEnum = terms.iterator(); // access the terms for this field
            BytesRef term;
            while ((term = termsEnum.next()) != null) {// explore the terms for this field
//                System.out.print(term.utf8ToString()+": "+termsEnum.totalTermFreq()+" ");
                TermFreqVector.put(term.utf8ToString(), (int) termsEnum.totalTermFreq());
            }
        }
//        }
    }

    public int size() {
        return TermFreqVector.size();
    }

    public int getFreq(String term) {
        return TermFreqVector.get(term);
    }

    public Set<String> getTerms() {
        return TermFreqVector.keySet();
    }

    public Collection<Integer> termFreqs() {
        return TermFreqVector.values();
    }

    public int numberOfTerms() {
        int sum = 0;
        for (int i : TermFreqVector.values()) {
            sum += i;
        }
        return sum;
    }

    public Map<String, Integer> getTermFreqVector() {
        return TermFreqVector;
    }

}
