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
package utoronto.ca.ir.search.gurobi;

import gurobi.GRB;
import gurobi.GRBException;
import gurobi.GRBModel;
import gurobi.GRBVar;
import java.io.IOException;
import java.util.Map;
import org.apache.lucene.search.IndexSearcher;
import utoronto.ca.ir.search.SetSelector;

/**
 * Abstract method for implementing Gurobi-based selectors.
 *
 * @author rbouadjenek
 */
public abstract class GurobiSelector extends SetSelector {

    public double M = 10000; // value of big M

    public GurobiSelector(IndexSearcher is, Map<String, Double> malicious) {
        super(is, malicious);
    }

    public GurobiSelector(String indexDir, double rate_malicious) throws IOException {
        super(indexDir, rate_malicious);
    }

    public void printSolution(GRBModel model) throws GRBException {
        for (GRBVar var : model.getVars()) {
            System.out.println(var.get(GRB.StringAttr.VarName) + "= " + var.get(GRB.DoubleAttr.X));
        }
    }

}
