/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utoronto.ca.logs;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utoronto.ca.utils.Information;

/**
 *
 * @author reda
 */
@WebServlet(name = "DataBasePost", urlPatterns = {"/DataBasePost"})
public class DataBasePost extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userid = request.getParameter("userid");
        String algorithm = request.getParameter("algoid");
        String pos = request.getParameter("pos");
        String mode = request.getParameter("mode");
        String disaster = request.getParameter("disaster");
        String date = request.getParameter("date");
        String location = request.getParameter("location");

        Connection con;
        Statement stmt;
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection(Information.DBMS_URL, Information.DBMS_USER, Information.DBMS_PASSWORD);
            stmt = con.createStatement();
            String sql = null;

            if (mode.equals("training")) {
                algorithm=algorithm.replaceAll("_trial", "");
                switch (algorithm) {
                    case "baseline":
                        sql = "update users set training_b=1 "
                                + " WHERE userid = \"" + userid + "\"";
                        break;
                    case "filters":
                        sql = "update users set training_f=1 "
                                + " WHERE userid = \"" + userid + "\"";
                        break;
                    default:
                        break;
                }

            } else {
                switch (pos) {
                    case "completion_task_1":
                        sql = "update answers set answer_date1 = now(),  natural_disaster_1 = \"" + disaster + "\" , date_1 = \"" + date + "\", location_1 =  \"" + location + "\"  "
                                + "WHERE userid = \"" + userid + "\" and algorithm = \"" + algorithm + "\"";
                        break;
                    case "completion_task_2":
                        sql = "update answers set answer_date2 = now(),  natural_disaster_2 = \"" + disaster + "\" , date_2 = \"" + date + "\", location_2 =  \"" + location + "\"  "
                                + "WHERE userid = \"" + userid + "\" and algorithm = \"" + algorithm + "\"";
                        break;
                    case "completion_task_3":
                        sql = "update answers set answer_date3 = now(),  natural_disaster_3 = \"" + disaster + "\" , date_3 = \"" + date + "\", location_3 =  \"" + location + "\"  "
                                + "WHERE userid = \"" + userid + "\" and algorithm = \"" + algorithm + "\"";
                        break;
                    default:
                        break;
                }
            }
            if (sql != null) {
                stmt.executeUpdate(sql);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
            con = null;
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
