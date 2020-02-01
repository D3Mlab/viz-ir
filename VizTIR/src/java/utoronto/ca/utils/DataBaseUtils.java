/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utoronto.ca.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author reda
 */
public class DataBaseUtils {
    
    public static class Answers {

        String natural_disaster_1, natural_disaster_2, natural_disaster_3;
        String date_1, date_2, date_3;
        String location_1, location_2, location_3;

        public Answers() {
        }

        public void setNatural_disaster_1(String natural_disaster_1) {
            this.natural_disaster_1 = natural_disaster_1;
        }

        public void setNatural_disaster_2(String natural_disaster_2) {
            this.natural_disaster_2 = natural_disaster_2;
        }

        public void setNatural_disaster_3(String natural_disaster_3) {
            this.natural_disaster_3 = natural_disaster_3;
        }

        public void setDate_1(String date_1) {
            this.date_1 = date_1;
        }

        public void setDate_2(String date_2) {
            this.date_2 = date_2;
        }

        public void setDate_3(String date_3) {
            this.date_3 = date_3;
        }

        public void setLocation_1(String location_1) {
            this.location_1 = location_1;
        }

        public void setLocation_2(String location_2) {
            this.location_2 = location_2;
        }

        public void setLocation_3(String location_3) {
            this.location_3 = location_3;
        }

        public String getNatural_disaster_1() {
            return natural_disaster_1;
        }

        public String getNatural_disaster_2() {
            return natural_disaster_2;
        }

        public String getNatural_disaster_3() {
            return natural_disaster_3;
        }

        public String getDate_1() {
            return date_1;
        }

        public String getDate_2() {
            return date_2;
        }

        public String getDate_3() {
            return date_3;
        }

        public String getLocation_1() {
            return location_1;
        }

        public String getLocation_2() {
            return location_2;
        }

        public String getLocation_3() {
            return location_3;
        }

    }

    public static Answers getAnswers(Connection con, int userid, String algorithm) {
        Statement stmt;
        String natural_disaster_1, natural_disaster_2, natural_disaster_3;
        String date_1, date_2, date_3;
        String location_1, location_2, location_3;
        try {
            stmt = con.createStatement();
            String sql = "select * from answers where userid = \"" + userid + "\" and algorithm = \"" + algorithm + "\"";
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                natural_disaster_1 = rs.getString("natural_disaster_1");
                natural_disaster_2 = rs.getString("natural_disaster_2");
                natural_disaster_3 = rs.getString("natural_disaster_3");

                date_1 = rs.getString("date_1");
                date_2 = rs.getString("date_2");
                date_3 = rs.getString("date_3");

                location_1 = rs.getString("location_1");
                location_2 = rs.getString("location_2");
                location_3 = rs.getString("location_3");

                Answers answers = new Answers();

                answers.setDate_1(date_1);
                answers.setDate_2(date_2);
                answers.setDate_3(date_3);

                answers.setLocation_1(location_1);
                answers.setLocation_2(location_2);
                answers.setLocation_3(location_3);

                answers.setNatural_disaster_1(natural_disaster_1);
                answers.setNatural_disaster_2(natural_disaster_2);
                answers.setNatural_disaster_3(natural_disaster_3);
                return answers;
            }
            rs.close();
            stmt.executeUpdate(sql);

        } catch (Exception ex) {
            ex.printStackTrace();
            con = null;
        }
        return null;
    }
}
