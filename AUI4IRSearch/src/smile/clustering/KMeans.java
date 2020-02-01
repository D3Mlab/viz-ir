/** *****************************************************************************
 * Copyright (c) 2010 Haifeng Li
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
 ****************************************************************************** */
package smile.clustering;

import java.io.Serializable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import smile.math.Math;

/**
 * K-Means clustering. The algorithm partitions n observations into k clusters
 * in which each observation belongs to the cluster with the nearest mean.
 * Although finding an exact solution to the k-means problem for arbitrary input
 * is NP-hard, the standard approach to finding an approximate solution (often
 * called Lloyd's algorithm or the k-means algorithm) is used widely and
 * frequently finds reasonable solutions quickly.
 * <p>
 * However, the k-means algorithm has at least two major theoretic shortcomings:
 * <ul>
 * <li> First, it has been shown that the worst case running time of the
 * algorithm is super-polynomial in the input size.
 * <li> Second, the approximation found can be arbitrarily bad with respect to
 * the objective function compared to the optimal learn.
 * </ul>
 * In this implementation, we use k-means++ which addresses the second of these
 * obstacles by specifying a procedure to initialize the cluster centers before
 * proceeding with the standard k-means optimization iterations. With the
 * k-means++ initialization, the algorithm is guaranteed to find a solution that
 * is O(log k) competitive to the optimal k-means solution.
 * <p>
 * We also use k-d trees to speed up each k-means step as described in the
 * filter algorithm by Kanungo, et al.
 * <p>
 * K-means is a hard clustering method, i.e. each sample is assigned to a
 * specific cluster. In contrast, soft clustering, e.g. the
 * Expectation-Maximization algorithm for Gaussian mixtures, assign samples to
 * different clusters with different probabilities.
 *
 * <h2>References</h2>
 * <ol>
 * <li> Tapas Kanungo, David M. Mount, Nathan S. Netanyahu, Christine D. Piatko,
 * Ruth Silverman, and Angela Y. Wu. An Efficient k-Means Clustering Algorithm:
 * Analysis and Implementation. IEEE TRANS. PAMI, 2002.</li>
 * <li> D. Arthur and S. Vassilvitskii. "K-means++: the advantages of careful
 * seeding". ACM-SIAM symposium on Discrete algorithms, 1027-1035, 2007.</li>
 * <li> Anna D. Peterson, Arka P. Ghosh and Ranjan Maitra. A systematic
 * evaluation of different methods for initializing the K-means clustering
 * algorithm. 2010.</li>
 * </ol>
 *
 * @see XMeans
 * @see GMeans
 * @see CLARANS
 * @see SIB
 * @see smile.vq.SOM
 * @see smile.vq.NeuralGas
 * @see BIRCH
 * @see BBDTree
 *
 * @author Haifeng Li
 */
public class KMeans extends Clustering<double[]> implements Serializable {

    private static final long serialVersionUID = 1L;
    private static final Logger logger = LoggerFactory.getLogger(KMeans.class);

    /**
     * The total distortion.
     */
    double distortion;
    /**
     * The centroids of each cluster.
     */
    double[][] centroids;

    /**
     * Constructor.
     */
    KMeans() {
    }

    /**
     * Returns the distortion.
     */
    public double distortion() {
        return distortion;
    }

    /**
     * Returns the centroids.
     */
    public double[][] centroids() {
        return centroids;
    }

    /**
     * Constructor. Clustering data into k clusters up to 100 iterations.
     *
     * @param data the input data of which each row is a sample.
     * @param k the number of clusters.
     */
    public KMeans(double[][] data, int k, double alpha, double beta, double gamma, double maxDistTime, double maxDistPosition) {
        this(data, k, 100, alpha, beta, gamma, maxDistTime, maxDistPosition);
    }

    /**
     * Constructor. Clustering data into k clusters.
     *
     * @param bbd the BBD-tree of data for fast clustering.
     * @param data the input data of which each row is a sample.
     * @param k the number of clusters.
     * @param maxIter the maximum number of iterations for each running.
     */
    KMeans(double[][] data, int k, int maxIter, double alpha, double beta, double gamma, double maxDistTime, double maxDistPosition) {
        if (k < 2) {
            throw new IllegalArgumentException("Invalid number of clusters: " + k);
        }

        if (maxIter <= 0) {
            throw new IllegalArgumentException("Invalid maximum number of iterations: " + maxIter);
        }

        int n = data.length;
        int d = data[0].length;

        this.k = k;
        distortion = Double.MAX_VALUE;
        y = seed(data, k, ClusteringDistance.D3mDistance, alpha, beta, gamma, maxDistTime, maxDistPosition);

//        for (int i = 0; i < y.length; i++) {
////            System.out.println(data[i][1] + " " + data[i][2] + " " + y[i]);
//            System.out.println((data[i][0] - 1356998401000L) / (1420070341000L - 1356998401000L) + " 0 " + y[i]);
//        }
        size = new int[k];
        centroids = new double[k][d];

        for (int i = 0; i < n; i++) {
            size[y[i]]++;
        }

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < d; j++) {
                centroids[y[i]][j] += data[i][j];
            }
        }

        for (int i = 0; i < k; i++) {
            for (int j = 0; j < d; j++) {
                centroids[i][j] /= size[i];
            }
        }

        double[][] sums = new double[k][d];
        for (int iter = 1; iter <= maxIter; iter++) {
            double dist = clustering(data, sums, alpha, beta, gamma, maxDistTime, maxDistPosition);
            if (distortion <= dist) {
                break;
            } else {
                distortion = dist;
            }
        }
    }

    /**
     * Reda clustering method.
     *
     * @param data
     * @param sums
     * @param alpha
     * @param beta
     * @param gamma
     * @return distortion.
     */
    public double clustering(double[][] data, double[][] sums, double alpha, double beta, double gamma, double maxDistTime, double maxDistPosition) {
        /**
         * Update cluster assignements.
         */
        for (int i = 0; i < data.length; i++) {

            double currentDist = Integer.MAX_VALUE;

            for (int j = 0; j < k; j++) {
                double newDist = Clustering.getD3mDistance(data[i], centroids[j], alpha, beta, gamma, maxDistTime, maxDistPosition);
                if (newDist < currentDist) {
                    currentDist = newDist;
                    y[i] = j;
                }

            }
        }

//        System.out.println("*******************");
//        for (int i = 0; i < data.length; i++) {
//            System.out.println(data[i][1] + " " + data[i][2] + " " + y[i]);
//        }
//        System.out.println("*******************");
//
//        System.out.println("**************");
//        for (int i = 0; i < centroids.length; i++) {
//            System.out.println(centroids[i][1] + " " + centroids[i][2]);
//        }
//        System.out.println("**************");
        /**
         * Update centroids.
         */
        size = new int[k];
        sums = new double[k][data[0].length];
        for (int i = 0; i < data.length; i++) {
            int a = y[i];
            size[a]++;
            Math.plus(sums[y[i]], data[i]);
        }

        for (int i = 0; i < k; i++) {
            if (size[i] > 0) {
                for (int j = 0; j < data[0].length; j++) {
                    centroids[i][j] = sums[i][j] / size[i];
                }
            }
        }

//        System.out.println("**************");
//        for (int i = 0; i < centroids.length; i++) {
//            System.out.println(centroids[i][1] + " " + centroids[i][2]);
//        }
//        System.out.println("**************");
        /**
         * Compute distortion.
         */
        return this.getDistortion(data, alpha, beta, gamma,  maxDistTime,  maxDistPosition);
    }

    /**
     * This method computes distortion.
     *
     * @param data
     * @param alpha
     * @param beta
     * @param gamma
     * @param maxDistTime
     * @param maxDistPosition
     * @return
     */
    public double getDistortion(double[][] data, double alpha, double beta, double gamma, double maxDistTime, double maxDistPosition) {
        double distor = 0;
        for (int i = 0; i < data.length; i++) {
            distor += Clustering.getD3mDistance(data[i], centroids[y[i]], alpha, beta, gamma, maxDistTime, maxDistPosition);
        }
        return distor;
    }

}
