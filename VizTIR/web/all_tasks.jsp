<%-- 
    Document   : tasks
    Created on : 21-Mar-2018, 12:25:31 AM
    Author     : admin
--%>

<%@page import="utoronto.ca.utils.Information"%>
<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if (request.getParameter("email") == null) {
        if (session.getAttribute("email") == null) {
            response.sendRedirect("index.jsp");
        }
    } else {
        session.setAttribute("email", request.getParameter("email"));
    }

    List<String[]> nds = new ArrayList<>();
    nds.add(new String[]{"pos1", "pos7", "pos6"});
    nds.add(new String[]{"pos2", "pos3", "pos8"});
    nds.add(new String[]{"pos4", "pos9", "pos5"});

    Collections.shuffle(nds, new Random());

    String email = (String) session.getAttribute("email");

    // Mysql connection establishment
    Connection con = (Connection) session.getAttribute("jsp.sql.connection");
    Statement stmt;
    ResultSet rs;

    List<String> orders = new ArrayList<>();
    orders.add("123");
    orders.add("132");
    orders.add("213");
    orders.add("231");
    orders.add("312");
    orders.add("321");

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
    int userid = -1;
    String sql = "select userid from users where email = \"" + email + "\";";
    rs = stmt.executeQuery(sql);
    if (rs.next()) {
        userid = rs.getInt(1);
    }
    rs.close();

    // write to users table database
    if ((userid == -1) && (email != null)) {
        sql = "insert into users (email) values (\"" + email + "\");";
        stmt.execute(sql);

        sql = "select userid from users where email= \"" + email + "\" limit 1 ;";
        rs = stmt.executeQuery(sql);
        if (rs.next()) {
            userid = rs.getInt(1);
        }
        rs.close();

        int seq_mod = userid % 6;

        sql = "insert into answers (userid, algorithm,seq,nd1,nd2,nd3) values (\"" + userid + "\", \"baseline\", " + (Integer.parseInt(orders.get(seq_mod).substring(0, 1))+1) + " ,\"" + nds.get(0)[0] + "\",\"" + nds.get(0)[1] + "\",\"" + nds.get(0)[2] + "\")";
        stmt.execute(sql);

        sql = "insert into answers (userid, algorithm,seq,nd1,nd2,nd3) values (\"" + userid + "\", \"kmeans\", " + (Integer.parseInt(orders.get(seq_mod).substring(1, 2))+1) + " ,\"" + nds.get(1)[0] + "\",\"" + nds.get(1)[1] + "\",\"" + nds.get(1)[2] + "\")";
        stmt.execute(sql);

        sql = "insert into answers (userid, algorithm,seq,nd1,nd2,nd3) values (\"" + userid + "\", \"filters\", " + (Integer.parseInt(orders.get(seq_mod).substring(2, 3))+1) + " ,\"" + nds.get(2)[0] + "\",\"" + nds.get(2)[1] + "\",\"" + nds.get(2)[2] + "\")";
        stmt.execute(sql);
        
        sql = "insert into answers (userid, algorithm,seq,nd1,nd2,nd3,sus,nasa) values (\"" + userid + "\", \"baseline_trial\", 0 ,\"pos10\",\"pos11\",\"pos12\",1,1)";
        stmt.execute(sql);
        
        sql = "insert into answers (userid, algorithm,seq,nd1,nd2,nd3,sus,nasa) values (\"" + userid + "\", \"filters_trial\", 1 ,\"pos10\",\"pos11\",\"pos12\",1,1)";
        stmt.execute(sql);
        

    }
    session.setAttribute("userid", userid);
    TimeUnit.SECONDS.sleep(2);

    int entrance = 1, training_b = 1, training_f = 1, sus = 1, nasa = 1, total = 0;
    String algorithm = "";

    sql = "select entrance,training_b,training_f from users where userid='" + userid + "'";
    rs = stmt.executeQuery(sql);
    if (rs.next()) {
        entrance = rs.getInt("entrance");
        training_b = rs.getInt("training_b");
        training_f = rs.getInt("training_f");
        session.setAttribute("entrance", entrance);
        session.setAttribute("training_b", training_b);
        session.setAttribute("training_f", training_f);
        rs.close();
    }

    //TODO: remove for real experiment.
    //entrance = 1;
    if (entrance == 1) {
        sql = "select * from answers where userid='" + userid + "' and natural_disaster_1 is not NULL and natural_disaster_2 is not NULL and natural_disaster_3 is not NULL and (sus =0 or nasa = 0);";
        rs = stmt.executeQuery(sql);
        if (rs.next()) {
            sus = rs.getInt("sus");
            nasa = rs.getInt("nasa");
            algorithm = rs.getString("algorithm");
            rs.close();
        }

        //TODO: remove for real experiment.
        //nasa = 1;
        //sus = 1;
        if (nasa == 1 && sus == 1) {
            sql = "select count(*) as n from answers where userid='" + userid + "' and (natural_disaster_1 is NULL or natural_disaster_2 is NULL or natural_disaster_3 is NULL);";
            rs = stmt.executeQuery(sql);

            if (rs.next()) {
                total = rs.getInt("n");
                rs.close();
            }
        }
    }
    if(training_b == 1 && training_f == 0){
      response.sendRedirect("tasks.jsp");  
    }
    //response.sendRedirect("tasks.jsp");
%>        

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="assets/img/favicons/favicon.ico">

        <title>Select task</title>

        <!-- Bootstrap core CSS -->
        <link href="dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/signin.css" rel="stylesheet">
    </head>


    <body class="text-center">
        <script>
            var userEmail = "<%= session.getAttribute("email")%>";
            var uid = "<%= session.getAttribute("userid")%>";
            var order = "<%= session.getAttribute("order")%>";
        </script>    
        <form class="form-selecttask" action="tasks.jsp" method="POST">
            <img class="mb-4" src="http://d3m.mie.utoronto.ca/wp-content/themes/uoft_bootstrap3/_inc/img/U-of-T-logo.svg" width="300" height="100" alt="UofT">          

            <!--%
            out.print("<h1 class=\"h3 mb-3 font-weight-normal\"> Your login Email is "+uid+", Please select trials</h1>");
           %-->
            <h1 class="h3 mb-3 font-weight-normal">Your user ID is <% out.print(userid); %>.</h1>

            <%
                if (training_b == 0 || training_f == 0) {                    
                    out.println("<h1> Welcome and thank you for your participation.</h1>");
                    out.println("<h1 class=\"h3 mb-3 font-weight-normal\">Please watch the video below before proceeding to <a href=\"tasks.jsp\">training</a>.</h1>");
                    out.println("<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/y7TS490gO0s\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>");
                    //out.println("<h1 class=\"h3 mb-3 font-weight-normal\">Then, please proceed with .</h1>");
                } else {

                    if (entrance == 0) {
                        out.println("<h1> Please answer the following entrance <a href=\"https://docs.google.com/forms/d/e/1FAIpQLSc8sUHTEL1fTEaVUWi3IDkWcCpt8QCscudY-JHccI_zTDIzQg/viewform?usp=pp_url&entry.1340650177=" + userid + "\" > survey</a>. </h1>");
                    } else {
                        if (sus == 0) {
                            switch (algorithm) {
                                case "baseline":
                                    out.println("<h1> Please answer the following SUS <a href=\"https://docs.google.com/forms/d/e/1FAIpQLScV-pNnljosmN9CSIqaf7BeiQMUB42n6310IFkh3bpF4p5ivw/viewform?usp=pp_url&entry.1340650177=" + userid + "\" > survey</a>. </h1>");
                                    break;
                                case "kmeans":
                                    out.println("<h1> Please answer the following SUS <a href=\"https://docs.google.com/forms/d/e/1FAIpQLScq8X-FEPeRYoHI6_kN3v8d9VgJj1mSkIWc5KCt86Le3fS-pw/viewform?usp=pp_url&entry.1340650177=" + userid + "\" > survey</a>. </h1>");
                                    break;
                                case "filters":
                                    out.println("<h1> Please answer the following SUS <a href=\"https://docs.google.com/forms/d/e/1FAIpQLSd3VZEwVD53TqaeIzbI5Lb0im8JSwQQM5BW3bJGOYeGG495fw/viewform?usp=pp_url&entry.1340650177=" + userid + "\" > survey</a>. </h1>");
                                    break;
                            }
                        } else if (nasa == 0) {
                            switch (algorithm) {
                                case "baseline":
                                    out.println("<h1> Please answer the following NASA TLX <a href=\"https://docs.google.com/forms/d/e/1FAIpQLScgIjgyymCFoWX47EyInUDyaGxE73GhMPCZE7DB0aXFM4vDZg/viewform?usp=pp_url&entry.1340650177=" + userid + "\" > survey</a>. </h1>");
                                    break;
                                case "kmeans":
                                    out.println("<h1> Please answer the following NASA TLX <a href=\"https://docs.google.com/forms/d/e/1FAIpQLScjLYmrkAgy72IjDpaYu646l6EOHLT2-ZUt0JI639TbRw-ZiA/viewform?usp=pp_url&entry.1340650177=" + userid + "\" > survey</a>. </h1>");
                                    break;
                                case "filters":
                                    out.println("<h1> Please answer the following NASA TLX <a href=\"https://docs.google.com/forms/d/e/1FAIpQLSdP5DmlVGFe1FOHdI_KhQqAAuSIdEFhnSiMH4OUO8bzm-f8HQ/viewform?usp=pp_url&entry.1340650177=" + userid + "\" > survey</a>. </h1>");
                                    break;
                            }
                        } else {
                            out.println("<h1 class=\"h3 mb-3 font-weight-normal\">Remaining " + total + " trials.</h1>");
                            out.print("<button class=\"btn btn-lg btn-primary btn-block\" type=\"submit\" ");
                            if (total == 0) {
                                out.print("disabled");
                            }
                            out.println(">");
                            if (total == 0) {
                                out.print("Experiment done! Thank you.");
                            } else {
                                out.print("Start");
                            }
                            out.println("</button>");
                            
                            out.println("<b>Quick hints:</b>"
                                    + "<ul style=\"text-align: justify;\"><li>There are three trials in this experiment. </li>"
                                    + "<li>Each trial contains three natural disasters.</li>"
                                    + "<li>You need to search in the system with a query.</li>"
                                    + "<li>The query may contain <b style=\"color:red;\">ONE</b> or <b style=\"color:red;\">MULTIPLE</b> natural disasters, e.g., floods, earthquake, blizzard ... </li> </ul>");

                            if (total == 0) {
                                out.print("<h1> Please answer the following exit <a href=\"https://docs.google.com/forms/d/e/1FAIpQLSfdyEMpNjoUi4f6vi3WRUbDd2CC6rF6YGWnoqeqZ9oeTykRZQ/viewform?entry.1340650177=" + userid + "\" > survey</a>. </h1>");
                            }

                        }
                    }
                }

            %>
        </form>
        
    </body>
</html>
