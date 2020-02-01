/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package unimelb.edu.au.tools;

import java.io.IOException;
import java.io.StringReader;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.tokenattributes.CharTermAttribute;
import org.apache.lucene.queryparser.classic.QueryParser;

/**
 *
 * @author rbouadjenek
 */
public class Functions {

    /**
     * This function transforms a string to date.
     *
     * @param str
     * @return
     */
    public static Date string2Date(String str) {
        DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
        Date date = null;
        try {
            date = df.parse(str);
        } catch (ParseException e) {
        }
        return date;
    }

    public static String getTimer(long millis) {
        return String.format("%d hour, %d min, %d sec",
                TimeUnit.MILLISECONDS.toHours(millis),
                TimeUnit.MILLISECONDS.toMinutes(millis)
                - TimeUnit.HOURS.toMinutes(TimeUnit.MILLISECONDS.toHours(millis)),
                TimeUnit.MILLISECONDS.toSeconds(millis)
                - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(millis))
        );
    }

    public static ArrayList<String> tokenizeToArrayList(final String input, Analyzer analyzer) {
        final ArrayList<String> returnVect = new ArrayList<>();
        String str = Functions.processString(input, analyzer);
        StringTokenizer st = new StringTokenizer(str, " ");
        while (st.hasMoreTokens()) {
            returnVect.add(st.nextToken());
        }
        return returnVect;
    }

    public static Map<String, Integer> tokenizeToMap(final String input, Analyzer analyzer) {
        final Map<String, Integer> returnVect = new HashMap<>();
        String str = Functions.processString(input, analyzer);
        StringTokenizer st = new StringTokenizer(str, " ");
        while (st.hasMoreTokens()) {
            String token = st.nextToken();
            if (returnVect.containsKey(token)) {
                int freq = returnVect.get(token) + 1;
                returnVect.put(token, freq);
            } else {
                returnVect.put(token, 1);
            }
        }
        return returnVect;
    }

    /**
     * Process a string using an analyzer and return a new string.
     *
     * @param ch
     * @param analyzer
     * @return
     */
    public static String processString(String ch, Analyzer analyzer) {
        try {
            String out = "";
            try (TokenStream stream = analyzer.tokenStream(null, new StringReader(QueryParser.escape(ch)))) {
                CharTermAttribute cattr = stream.addAttribute(CharTermAttribute.class);
                stream.reset();
                while (stream.incrementToken()) {
                    out += cattr.toString() + " ";
                }
                stream.end();
            }
            return out.trim();
        } catch (IOException ex) {
            Logger.getLogger(Functions.class.getName()).log(Level.SEVERE, null, ex);
            return "";
        }
    }
}
