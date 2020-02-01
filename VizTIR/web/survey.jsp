<%-- 
    Document   : survey
    Created on : 7-Jun-2018, 2:52:21 PM
    Author     : reda
--%>

<%@page import="utoronto.ca.utils.Information"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String survey = request.getParameter("survey");
    String algorithm = request.getParameter("algorithm");
    Integer userid = (Integer) session.getAttribute("userid");
    String entrance = request.getParameter("entrance");   
    
    
    if (userid == null) {
        response.sendRedirect("index.jsp");
    } else if (entrance == null) {
        if (survey == null || algorithm == null) {
            response.sendRedirect("all_tasks.jsp");
        } else {
            Connection con = (Connection) session.getAttribute("jsp.sql.connection");
            Statement stmt;
            if (con == null) {
                try {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con = DriverManager.getConnection(Information.DBMS_URL, Information.DBMS_USER, Information.DBMS_PASSWORD);
                    session.setAttribute("jsp.sql.connection", con);
                } catch (Exception ex) {
                    ex.printStackTrace();
                    con = null;
                }
            }
            stmt = con.createStatement();
            String sql = null;
            if (survey.equals("sus") || survey.equals("nasa")) {
                sql = "update answers set " + survey + "=1"
                        + " WHERE userid = \"" + userid + "\" and algorithm = \"" + algorithm + "\"";
                stmt.executeUpdate(sql);
            }
            response.sendRedirect("all_tasks.jsp");
        }
    } else {
        Connection con = (Connection) session.getAttribute("jsp.sql.connection");
        Statement stmt;
        if (con == null) {
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection(Information.DBMS_URL, Information.DBMS_USER, Information.DBMS_PASSWORD);
                session.setAttribute("jsp.sql.connection", con);
            } catch (Exception ex) {
                ex.printStackTrace();
                con = null;
            }
        }
        stmt = con.createStatement();
        String sql = "update users set entrance=1"
                + " WHERE userid = \"" + userid + "\"";
        stmt.executeUpdate(sql);
        response.sendRedirect("all_tasks.jsp");
    }
%>


