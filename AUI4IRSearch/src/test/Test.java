package test;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import net.balusc.util.DateUtil;
import unimelb.edu.au.tools.Mathematics;
import unimelb.edu.au.tools.Statistics;
import static unimelb.edu.au.tools.Statistics.getSumArray;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author rbouadjenek
 */
public class Test {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws ParseException {
        // TODO code application logic here
        double[] a = new double[]{0.80, 0.40, 0.50, 0.40, 0.40, 0.50, 0.300, 0.80, 0.80, 0.50};
        System.out.println(Statistics.getSumArray(a));
    }
}
