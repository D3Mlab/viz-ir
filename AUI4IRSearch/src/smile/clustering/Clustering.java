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

import java.util.Arrays;
import smile.math.Math;

/**
 * Abstract class of partition clustering. Partition methods break the
 * observation into distinct non-overlapping groups.
 *
 * @param <T> the type of input object.
 *
 * @author Haifeng Li
 */
public abstract class Clustering<T> {

    /**
     * The number of clusters.
     */
    protected int k;
    /**
     * The cluster labels of data.
     */
    protected int[] y;
    /**
     * The number of samples in each cluster.
     */
    protected int[] size;

    /**
     * Returns the number of clusters.
     */
    public int getNumClusters() {
        return k;
    }

    /**
     * Returns the cluster labels of data.
     */
    public int[] getClusterLabel() {
        return y;
    }

    /**
     * Returns the size of clusters.
     */
    public int[] getClusterSize() {
        return size;
    }

    /**
     * Squared Euclidean distance with handling missing values (represented as
     * NaN).
     */
    static double squaredDistance(double[] x, double[] y) {
        int n = x.length;
        int m = 0;
        double dist = 0.0;

        for (int i = 0; i < n; i++) {
            if (!Double.isNaN(x[i]) && !Double.isNaN(y[i])) {
                m++;
                double d = x[i] - y[i];
                dist += d * d;
            }
        }

        if (m == 0) {
            dist = Double.MAX_VALUE;
        } else {
            dist = n * dist / m;
        }

        return dist;
    }

    /**
     * Euclidean distance between the two arrays of type integer. No missing
     * value handling in this method.
     *
     * @param x
     * @param y
     * @return
     */
    public static double EuclideanDistance(double[] x, double[] y) {
        if (x.length != y.length) {
            throw new IllegalArgumentException(String.format("Arrays have different length: x[%d], y[%d]", x.length, y.length));
        }
        double dist = 0.0;
        for (int i = 0; i < x.length; i++) {
            double d = x[i] - y[i];
            dist += d * d;
        }
        return Math.sqrt(dist);
    }

    /**
     * This method compute the cosine distance with vector elements that may be
     * positive or negative. Please see:
     * https://en.wikipedia.org/wiki/Cosine_similarity#Angular_distance_and_similarity
     *
     * @param vectorA
     * @param vectorB
     * @param alpha weight for time distance.
     * @param beta weight for position distance.
     * @param gamma weight for text distance.
     * @param maxDistTime Max distance of time used for normalization
     * @param maxDistPosition Max distance for position used for normalization
     * @return the distance distance.
     */
    public static double getD3mDistance(double[] vectorA, double[] vectorB, double alpha, double beta, double gamma, double maxDistTime, double maxDistPosition) {
        /**
         * Compute text cosine
         */
        double dotProduct = 0.0;
        double normA = 0.0;
        double normB = 0.0;
        for (int i = 3; i < vectorA.length; i++) {
            dotProduct += vectorA[i] * vectorB[i];
            normA += Math.pow(vectorA[i], 2);
            normB += Math.pow(vectorB[i], 2);
        }
        // This is done to correct a bug.
        double textDist = 1 - (dotProduct / (Math.sqrt(normA) * Math.sqrt(normB)));
        if (Double.isNaN(textDist)) {
            textDist = 1;
        }
        /**
         * Compute time Eucledian Distance.
         */
        long timeA = (long) vectorA[0];
        long timeB = (long) vectorB[0];

//        double maxDist = 1420070341000L - 1356998401000L; //31/12/2014 - 01/01/2013

        double timeDist = Math.abs(timeA - timeB) / maxDistTime;
        if (timeDist > 1) {
            timeDist = 1;
        }

        /**
         * Compute position Eucledian Distance.
         */
        double[] vectorA_Pos = new double[2];
        double[] vectorB_Pos = new double[2];
        vectorA_Pos[0] = vectorA[1];
        vectorA_Pos[1] = vectorA[2];
        vectorB_Pos[0] = vectorB[1];
        vectorB_Pos[1] = vectorB[2];

        double posDist = Clustering.EuclideanDistance(vectorA_Pos, vectorB_Pos);
        posDist = posDist /maxDistPosition; //to normalize

        double distance = alpha * timeDist + beta * posDist + gamma * textDist;
//        System.out.println("distance = " + alpha + " * " + timeDist + " + " + beta + " * " + posDist + " + " + gamma + " * " + textDist + " = " + distance);
//        System.out.println(" xmeans_alpha = " + 
//                alpha + ", xmeans_beta = " + beta + ", xmeans_gamma = " + gamma);        
//        System.out.println("x= [" + vectorA[1] + "," + vectorA[2] + "]");
//        System.out.println("y= [" + vectorB[1] + "," + vectorB[2] + "]");
//        System.out.println("dist = " + distance);
//        System.out.println("***********");
    
        return distance;
    }

    /**
     * Initialize cluster membership of input objects with KMeans++ algorithm.
     * Many clustering methods, e.g. k-means, need a initial clustering
     * configuration as a seed.
     * <p>
     * K-Means++ is based on the intuition of spreading the k initial cluster
     * centers away from each other. The first cluster center is chosen
     * uniformly at random from the data points that are being clustered, after
     * which each subsequent cluster center is chosen from the remaining data
     * points with probability proportional to its distance squared to the
     * point's closest cluster center.
     * <p>
     * The exact algorithm is as follows:
     * <ol>
     * <li> Choose one center uniformly at random from among the data points.
     * </li>
     * <li> For each data point x, compute D(x), the distance between x and the
     * nearest center that has already been chosen. </li>
     * <li> Choose one new data point at random as a new center, using a
     * weighted probability distribution where a point x is chosen with
     * probability proportional to D<sup>2</sup>(x). </li>
     * <li> Repeat Steps 2 and 3 until k centers have been chosen. </li>
     * <li> Now that the initial centers have been chosen, proceed using
     * standard k-means clustering. </li>
     * </ol>
     * This seeding method gives out considerable improvements in the final
     * error of k-means. Although the initial selection in the algorithm takes
     * extra time, the k-means part itself converges very fast after this
     * seeding and thus the algorithm actually lowers the computation time too.
     *
     * <h2>References</h2>
     * <ol>
     * <li> D. Arthur and S. Vassilvitskii. "K-means++: the advantages of
     * careful seeding". ACM-SIAM symposium on Discrete algorithms, 1027-1035,
     * 2007.</li>
     * <li> Anna D. Peterson, Arka P. Ghosh and Ranjan Maitra. A systematic
     * evaluation of different methods for initializing the K-means clustering
     * algorithm. 2010.</li>
     * </ol>
     *
     * @param data data objects to be clustered.
     * @param k the number of cluster.
     * @param distance
     * @param alpha weight for time distance.
     * @param beta weight for position distance.
     * @param gamma weight for text distance.
     * @param maxDistTime
     * @param maxDistPosition
     * @return the cluster labels.
     */
    public static int[] seed(double[][] data, int k, ClusteringDistance distance, double alpha, double beta, double gamma, double maxDistTime, double maxDistPosition) {
        int n = data.length;
        int[] y = new int[n];
        double[] centroid = data[Math.randomInt(n)];

        double[] d = new double[n];
        for (int i = 0; i < n; i++) {
            d[i] = Double.MAX_VALUE;
        }

        // pick the next center
        for (int j = 1; j < k; j++) {
            // Loop over the samples and compare them to the most recent center.  Store
            // the distance from each sample to its closest center in scores.
            for (int i = 0; i < n; i++) {
                // compute the distance between this sample and the current center
                double dist = 0.0;
                switch (distance) {
                    case EUCLIDEAN:
                        dist = Math.squaredDistance(data[i], centroid);
                        break;
                    case EUCLIDEAN_MISSING_VALUES:
                        dist = squaredDistance(data[i], centroid);
                        break;
                    case D3mDistance:
                        dist = getD3mDistance(data[i], centroid, alpha, beta, gamma, maxDistTime, maxDistPosition);
                        break;
                    case JENSEN_SHANNON_DIVERGENCE:
                        dist = Math.JensenShannonDivergence(data[i], centroid);
                        break;
                }

                if (dist < d[i]) {
                    d[i] = dist;
                    y[i] = j - 1;
                }
            }

            double cutoff = Math.random() * Math.sum(d);
            double cost = 0.0;
            int index = 0;
            for (; index < n; index++) {
                cost += d[index];
                if (cost >= cutoff) {
                    break;
                }
            }

            centroid = data[index];
        }

        for (int i = 0; i < n; i++) {
            // compute the distance between this sample and the current center
            double dist = 0.0;
            switch (distance) {
                case EUCLIDEAN:
                    dist = Math.squaredDistance(data[i], centroid);
                    break;
                case EUCLIDEAN_MISSING_VALUES:
                    dist = squaredDistance(data[i], centroid);
                    break;
                case D3mDistance:
                    dist = getD3mDistance(data[i], centroid, alpha, beta, gamma, maxDistTime, maxDistPosition);
                    break;
                case JENSEN_SHANNON_DIVERGENCE:
                    dist = Math.JensenShannonDivergence(data[i], centroid);
                    break;
            }

            if (dist < d[i]) {
                d[i] = dist;
                y[i] = k - 1;
            }
        }

        return y;
    }

    /**
     * Initialize cluster membership of input objects with KMeans++ algorithm.
     * Many clustering methods, e.g. k-means, need a initial clustering
     * configuration as a seed.
     * <p>
     * K-Means++ is based on the intuition of spreading the k initial cluster
     * centers away from each other. The first cluster center is chosen
     * uniformly at random from the data points that are being clustered, after
     * which each subsequent cluster center is chosen from the remaining data
     * points with probability proportional to its distance squared to the
     * point's closest cluster center.
     * <p>
     * The exact algorithm is as follows:
     * <ol>
     * <li> Choose one center uniformly at random from among the data points.
     * </li>
     * <li> For each data point x, compute D(x), the distance between x and the
     * nearest center that has already been chosen. </li>
     * <li> Choose one new data point at random as a new center, using a
     * weighted probability distribution where a point x is chosen with
     * probability proportional to D<sup>2</sup>(x). </li>
     * <li> Repeat Steps 2 and 3 until k centers have been chosen. </li>
     * <li> Now that the initial centers have been chosen, proceed using
     * standard k-means clustering. </li>
     * </ol>
     * This seeding method gives out considerable improvements in the final
     * error of k-means. Although the initial selection in the algorithm takes
     * extra time, the k-means part itself converges very fast after this
     * seeding and thus the algorithm actually lowers the computation time too.
     *
     * <h2>References</h2>
     * <ol>
     * <li> D. Arthur and S. Vassilvitskii. "K-means++: the advantages of
     * careful seeding". ACM-SIAM symposium on Discrete algorithms, 1027-1035,
     * 2007.</li>
     * <li> Anna D. Peterson, Arka P. Ghosh and Ranjan Maitra. A systematic
     * evaluation of different methods for initializing the K-means clustering
     * algorithm. 2010.</li>
     * </ol>
     *
     * @param <T> the type of input object.
     * @param data data objects array of size n.
     * @param medoids an array of size k to store cluster medoids on output.
     * @param y an array of size n to store cluster labels on output.
     * @param d an array of size n to store the distance of each sample to
     * nearest medoid.
     * @return the initial cluster distortion.
     */
    public static <T> double seed(smile.math.distance.Distance<T> distance, T[] data, T[] medoids, int[] y, double[] d) {
        int n = data.length;
        int k = medoids.length;
        T medoid = data[Math.randomInt(n)];
        medoids[0] = medoid;

        Arrays.fill(d, Double.MAX_VALUE);

        // pick the next center
        for (int j = 1; j < k; j++) {
            // Loop over the samples and compare them to the most recent center.  Store
            // the distance from each sample to its closest center in scores.
            for (int i = 0; i < n; i++) {
                // compute the distance between this sample and the current center
                double dist = distance.d(data[i], medoid);
                if (dist < d[i]) {
                    d[i] = dist;
                    y[i] = j - 1;
                }
            }

            double cutoff = Math.random() * Math.sum(d);
            double cost = 0.0;
            int index = 0;
            for (; index < n; index++) {
                cost += d[index];
                if (cost >= cutoff) {
                    break;
                }
            }

            medoid = data[index];
            medoids[j] = medoid;
        }

        for (int i = 0; i < n; i++) {
            // compute the distance between this sample and the current center
            double dist = distance.d(data[i], medoid);
            if (dist < d[i]) {
                d[i] = dist;
                y[i] = k - 1;
            }
        }

        double distortion = 0.0;
        for (int i = 0; i < n; ++i) {
            distortion += d[i];
        }

        return distortion;
    }
}
