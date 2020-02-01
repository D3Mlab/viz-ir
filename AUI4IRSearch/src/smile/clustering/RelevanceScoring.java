/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package smile.clustering;

/**
 *
 * @author Suri & Nojhat.
 */
public enum RelevanceScoring {
        /**
         * term frequency
         */
        TF,
        
        /**
         * term frequency-inverse document frequency
         */
        TFIDF,
        
        /**
         * boolean
         */
        BOOLEAN
        
}