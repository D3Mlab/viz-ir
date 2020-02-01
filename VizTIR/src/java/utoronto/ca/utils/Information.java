/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utoronto.ca.utils;

import java.text.DecimalFormat;

/**
 *
 * @author reda
 */
public class Information {

    /**
     * DBMS URL
     */
    public static String DBMS_URL = "jdbc:mysql://118.138.233.203:3306/VizTIF";
    /**
     * DBMS USER
     */
    public static String DBMS_USER = "reda";
    /**
     * DBMS PASSWORD
     */
    public static String DBMS_PASSWORD = "redapw";
    /**
     * Lucene Index Directory.
     */
    public static String INDEX_DIR = "ND_data_index_v6.1/";
    /**
     * Decimal format.
     */
    public static DecimalFormat df = new DecimalFormat("#.####");

}
