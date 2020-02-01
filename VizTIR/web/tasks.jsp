<%-- 
    Document   : Test
    Created on : 01/02/2018, 11:25:54 PM
    Author     : rbouadjenek
--%>
<%@page import="utoronto.ca.ir.search.bps.BPSSelector"%>
<%@page import="utoronto.ca.ir.evaluation.SetF1_Score"%>
<%@page import="utoronto.ca.ir.scoring.ScoringFunction"%>
<%@page import="utoronto.ca.utils.Information"%>
<%@page import="java.util.Arrays"%>
<%@page import="org.apache.lucene.index.Term"%>
<%@page import="org.apache.lucene.search.TermQuery"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.lang.Integer"%>
<%@page import="utoronto.ca.ir.search.SetSelector"%>
<%@page import="utoronto.ca.ir.search.clustering.XMeansFiltering"%>
<%@page import="utoronto.ca.utils.DataBaseUtils"%>
<%@page import="org.apache.lucene.search.ScoreDoc"%>
<%@page import="org.apache.lucene.search.Scorer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.lucene.search.BooleanClause"%>
<%@page import="org.apache.lucene.search.BooleanQuery"%>
<%@page import="java.util.Date"%>
<%@page import="utoronto.ca.ir.indexing.Indexer"%>
<%@page import="org.apache.lucene.document.Document"%>
<%@page import="utoronto.ca.ir.evaluation.SetEvaluation"%>
<%@page import="org.apache.lucene.search.Query"%>
<%@page import="org.apache.lucene.search.TopDocs"%>
<%@page import="java.util.List"%>
<%@page import=" java.io.File"%>
<%@page import=" java.io.FileOutputStream"%>
<%@page import=" java.io.IOException"%>
<%@page import=" java.io.PrintWriter"%>
<%@page import=" java.io.BufferedWriter"%>
<%@page import=" java.io.FileWriter"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
        if (session.getAttribute("userid") == null) {        
           if (request.getParameter("userid") == null) {
               response.sendRedirect("index.jsp");
           } else {
               session.setAttribute("userid", request.getParameter("userid"));
           }
        }
        Integer userid = (Integer) session.getAttribute("userid");
        
        
        int training_f = (Integer) session.getAttribute("training_f");
        int training_b = (Integer) session.getAttribute("training_b");
        
//        training_f = 1;
//        training_b = 1;
        
        if(training_b == 0 || training_f == 0){
            System.out.println("Training mode.");
        }
        

     
        Connection con = (Connection) session.getAttribute("jsp.sql.connection");
        Statement stmt;
        ResultSet rs;  
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection(Information.DBMS_URL, Information.DBMS_USER, Information.DBMS_PASSWORD);
            session.setAttribute("jsp.sql.connection", con);
        } catch (Exception ex) {
            ex.printStackTrace();
            con = null;
        }
        
        stmt = con.createStatement();
        String algo ="";
        String sql = "select * from answers where userid='"+userid+"' and (natural_disaster_1 is NULL or natural_disaster_2 is NULL or natural_disaster_3 is NULL) order by seq limit 1;";
        rs = stmt.executeQuery(sql);
        String nd1,nd2,nd3;
        String all_nds = "";
        
        TermQuery neg=new TermQuery(new Term(Indexer.TYPE, "neg"));
        BooleanQuery.Builder bqNDs = new BooleanQuery.Builder();
        bqNDs.add(neg, BooleanClause.Occur.SHOULD);
        
        
         // Check if in training mode
      if (rs.next()) {
            algo = rs.getString("algorithm");
            //algo = "filters";
            //algo = "kmeans";
            //algo = "baseline";
            nd1= rs.getString("nd1");
            nd2= rs.getString("nd2");
            nd3= rs.getString("nd3");
            all_nds = nd1+","+nd2+","+nd3;
            
            TermQuery pos1 = new TermQuery(new Term(Indexer.TYPE, nd1));
            TermQuery pos2 = new TermQuery(new Term(Indexer.TYPE, nd2));
            TermQuery pos3 = new TermQuery(new Term(Indexer.TYPE, nd3));
            
            bqNDs.add(pos1, BooleanClause.Occur.SHOULD);
            bqNDs.add(pos2, BooleanClause.Occur.SHOULD);
            bqNDs.add(pos3, BooleanClause.Occur.SHOULD); 
            rs.close();
        }else{
            response.sendRedirect("index.jsp");
        }  
   
    
    List<String> boundingboxcolor = new ArrayList<>();
    boundingboxcolor.add("#e6194b");
    boundingboxcolor.add("#3cb44b");
    boundingboxcolor.add("#ffe119");
    boundingboxcolor.add("#0082c8");
    boundingboxcolor.add("#f58231");
    boundingboxcolor.add("#911eb4");

    SetSelector selector;
    
    double alpha=1;
    if (request.getParameter("alpha") != null) {
        alpha = Double.parseDouble(request.getParameter("alpha"));
    }
    
    if(algo.startsWith("filters")){
         selector= new BPSSelector(Information.INDEX_DIR, alpha);
    }else if(algo.equals("kmeans")){
        int kmin = 5;
        int kmax = 6;
        double xmeans_alpha = 0.00;      //time
        double xmeans_beta = 1;       //pos
        double xmeans_gamma = 1-(xmeans_alpha+xmeans_beta);  //text
        System.out.println("kmin = " +kmin + ", kmax = " + kmax + ", xmeans_alpha = " + 
                xmeans_alpha + ", xmeans_beta = " + xmeans_beta + ", xmeans_gamma = " + xmeans_gamma);
        double maxDistTime= (1420070341000L - 1356998401000L);
        double maxDistPosition= (1420070341000L - 1356998401000L);
        selector= new XMeansFiltering(Information.INDEX_DIR, "boolean", kmin, kmax, xmeans_alpha, xmeans_beta, xmeans_gamma, maxDistTime, maxDistPosition);
    }else{
       selector= new BPSSelector(Information.INDEX_DIR);
    }
 

    double beta = 0.99;
    int num_filters = 6, zoom = 4, num_tweets = 40000;
    String start= "2013-01-01", end = "2015-01-01", keywords;
    double center_x=-99, center_y=39;
    int total_hits = 0;

    Query timeFilter = selector.getTimeFilter(start, end);

    Query positionFilter = null;
   
    keywords = request.getParameter("keywords");
    List<SetSelector.Filter> filters = new ArrayList<>();

    BooleanQuery.Builder bqFinal = new BooleanQuery.Builder();
    bqFinal.add(timeFilter, BooleanClause.Occur.FILTER);
    bqFinal.add(bqNDs.build(), BooleanClause.Occur.FILTER);
    
    
    if (positionFilter != null) {
        bqFinal.add(positionFilter, BooleanClause.Occur.FILTER);
    }
    if (keywords != null && !keywords.equals("")) {
        //keywords = keywords.replaceAll("[^A-Za-z0-9]", " ").trim().replaceAll(" +", " ");
        if(algo.startsWith("filters")){
            bqFinal.add(selector.getKeywordsFilter(keywords+" rt "), BooleanClause.Occur.MUST);
        }else{
            bqFinal.add(selector.getKeywordsFilter(keywords), BooleanClause.Occur.MUST);
        }
    } else {
        keywords = "";
    }
    TopDocs hits = null;
    ScoringFunction sf = null;
    double gamma= 0.9;
    
    long start_time = System.currentTimeMillis(), end_time = 0;
    if (num_filters > 0 && !keywords.equals("") && (algo.startsWith("filters")||algo.equals("kmeans"))) {
        System.out.println("Query: " + bqFinal.build());
        hits = selector.is.search(bqFinal.build(), num_tweets);
        System.out.println("Hits= " + hits.totalHits);
        total_hits = hits.scoreDocs.length;
        sf = new ScoringFunction(selector.getYBasedOnHits(hits,gamma));
        SetF1_Score se = new SetF1_Score(selector.getIds(hits), sf, beta);        
        if (hits.totalHits > 0) {
            if (hits.scoreDocs[0].score > 0) {
                filters = selector.getTopFilters(hits, se, sf, num_filters);
            }
        }         
        end_time = System.currentTimeMillis();        
    } else if (algo.startsWith("baseline") && !keywords.equals("")) {
        hits = selector.is.search(bqFinal.build(), num_tweets);
        System.out.println("Query: " + bqFinal.build());
        System.out.println("Hits= " + hits.totalHits);
        total_hits = hits.scoreDocs.length;
        sf = new ScoringFunction(selector.getYBasedOnHits(hits,gamma));
        end_time = System.currentTimeMillis();        
    }
    File f = new File("../experiment_logs/logs_" + userid +"_"+algo+".txt");
    PrintWriter out1 = new PrintWriter(new FileOutputStream(f, true), true); 
    if(end_time != 0){
        out1.append(System.currentTimeMillis() + "\t" + "Query_Execution_Time\t"+(end_time-start_time)+"\n");       
    }
    DataBaseUtils.Answers answers = DataBaseUtils.getAnswers(con, userid, algo);
    
    if(keywords.equals("")&&(answers.getLocation_1()==null)&&(answers.getLocation_2()==null)
            &&(answers.getLocation_3()==null)){        
        Date date_Now = new Date( );
        SimpleDateFormat ft = new SimpleDateFormat ("yyyy_MM_dd");
        //String dnow = ft.format(date_Now).toString();
        
        String now = String.valueOf(System.currentTimeMillis());
        out1.append(now + "\t" + "START: \t" + algo +"\t" + all_nds +"\n");          
    }
    out1.close();
    
%>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="assets/img/favicons/favicon.ico">
        
        <title>Visualization tool</title>

        <!-- Bootstrap core CSS -->
        <link href="dist/css/bootstrap.min.css" rel="stylesheet">
        
        <link href="css/main.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/dashboard.css" rel="stylesheet">
        <script src="http://maps.google.com/maps/api/js?key=AIzaSyBtYnhM1v2AOG_D6iCVpc1fG0KEy0SzKq8&language=en"></script>
        <script src="js/jquery-3.3.1.js"></script>
        
        <script>
            var userid = "<%= session.getAttribute("userid")%>";
            var email = "<%= session.getAttribute("email")%>";
            var algoid = "<%= algo%>";
            var all_nds = "<%= all_nds%>";
            var training_f =  "<%= training_f%>";
            var training_b =  "<%= training_b%>";
            <%
                int task_state=0;
                if(answers.getNatural_disaster_1()!= null) {
                    task_state++;
                }
                if(answers.getNatural_disaster_2()!= null) {
                    task_state++;
                }
                if(answers.getNatural_disaster_3()!= null) {
                    task_state++;
                }
                out.print("var task_state = "+task_state+";");            
            %>
            
            var nds = [<% if(answers.getNatural_disaster_1()!= null) {out.print("'"+answers.getNatural_disaster_1()+"'");} else{out.print("null");} %>,
                <% if(answers.getNatural_disaster_2()!= null) {out.print("'"+answers.getNatural_disaster_2()+"'");} else{out.print("null");} %>,
                <% if(answers.getNatural_disaster_3()!= null) {out.print("'"+answers.getNatural_disaster_3()+"'");} else{out.print("null");} %>];
                    
            var dates = [<% if(answers.getDate_1()!= null) {out.print("'"+answers.getDate_1()+"'");} else{out.print("null");} %>, 
                <% if(answers.getDate_2()!= null) {out.print("'"+answers.getDate_2()+"'");} else{out.print("null");} %>, 
                <% if(answers.getDate_3()!= null) {out.print("'"+answers.getDate_3()+"'");} else{out.print("null");} %>];
            
            var locations = [<% if(answers.getLocation_1()!= null) {out.print("'"+answers.getLocation_1()+"'");} else{out.print("null");} %>, 
                <% if(answers.getLocation_2()!= null) {out.print("'"+answers.getLocation_2()+"'");} else{out.print("null");} %>, 
                <% if(answers.getLocation_3()!= null) {out.print("'"+answers.getLocation_3()+"'");} else{out.print("null");} %>];
            
            function record_passing(uid, algo, record) {
                //console.log(uid);
                $.ajax({
                    type: 'POST',                        
                    url: 'Logs',                       
                    data: 'text=' + record + '&userid=' + uid+'&algo=' + algo,
                    //data:{userid:uid, text: record},

                    error: function (response) {
                        alert(data);
                    },
                    success: function (response) {
                        //alert('success:');
                        // Gets called when the action is successful with server response in variable response
                    }
                });
            }
            
            function database_post(mode, pos, disaster, date, location) {
                //console.log(uid);
                $.ajax({
                    type: 'POST',
                    url: 'DataBasePost',
                    data: 'userid=' + userid + '&algoid=' + algoid + '&mode=' + mode +'&pos=' + pos + '&disaster=' + disaster+'&date=' + date+'&location=' + location,
                    
                    //data:{userid:uid, text: record},

                    error: function (response) {
                        alert(data);
                    },
                    success: function (response) {
                        //alert('success:');
                        // Gets called when the action is successful with server response in variable response
                    }
                });
            }
            
        </script>
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
        
         <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
             <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Visualization tool</a> 
             
                <!-- %
                    if(algo.equals("algo1")){
                        out.print("<a class=\"navbar-brand col-sm-3 col-md-2 mr-0\" href=\"#\">Visualization tool - FT</a>");
                    } else if(algo.equals("algo2")){
                        out.print("<a class=\"navbar-brand col-sm-3 col-md-2 mr-0\" href=\"#\">Visualization tool - SD</a>");
                    } else if(algo.equals("algo3")){
                        out.print("<a class=\"navbar-brand col-sm-3 col-md-2 mr-0\" href=\"#\">Visualization tool - TD</a>");
                    }
                %--> 
                <%
                    if(training_b == 0 && training_f == 0){
                        out.println("<h2 style=\"color:red; font-style: \"> <b>Training part 1. </b> </h2>");            
                    } else   if(training_b == 1 && training_f == 0){
                        out.println("<h2 style=\"color:red; font-style: \"> <b>Training part 2. </b> </h2>");            
                    } else if(algo.equals("filters")){
                        out.println("<h2 style=\"color:red; font-style: \"> <b>Viz-TIR Using BPS. </b> </h2>");                             
                    }  else if(algo.equals("kmeans")){
                        out.println("<h2 style=\"color:red; font-style: \"> <b>X-Means algorithm. </b> </h2>");                             
                    }  else if(algo.equals("baseline")){
                        out.println("<h2 style=\"color:red; font-style: \"> <b>Baseline algorithm (showing all search results). </b> </h2>");                             
                    }                
                    %>
           <ul class="navbar-nav px-3">
                <li class="nav-item text-nowrap">
                    <a class="nav-link" href="index.jsp" style="font-weight: bold">Sign out  Userid: <%= session.getAttribute("userid")%></a>
                </li>                
            </ul> 
        </nav> 
         
                
     <div class="container-fluid">
            <div class="row">
                
              <nav class="col-md-2 d-none d-md-block bg-light sidebar">
                   <div class="sidebar-sticky">
                        <div class="nav flex-column"> 
                            
                           <div class="nav-item">
                                <a class="nav-link active" href="#">
                                    <span data-feather="home"></span> Natural Disaster <span class="sr-only">(current)</span>
                                </a>
                            </div> 
                               
                               <form class="form-check col-md-12 alert alert-success" id="answer1" name = "answer1" onsubmit="return form_update(this); " action="all_tasks.jsp" > 
                                   <fieldset <% if (answers.getNatural_disaster_1()!=null){ out.println("disabled=\"disabled\"");
                                            } %> >
                                <div class="form-group">
                                    <label>1st Natural Disaster</label>
                                    <select id="nd1" class="form-control" name="nd" onchange="record_passing(userid, algoid, 'answer_update_nd_1: \t'+this.value)" required>
                                        <option value="">Choose Natural Disaster...</option>
                                        <option value="blizzard" <% if(answers.getNatural_disaster_1()!=null){ if (answers.getNatural_disaster_1().equals("blizzard")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Snow Storm/Blizzard</option>
                                        <option value='drought' <% if(answers.getNatural_disaster_1()!=null){if (answers.getNatural_disaster_1().equals("drought")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Drought</option>
                                        <option value="earthquake"  <% if(answers.getNatural_disaster_1()!=null){if (answers.getNatural_disaster_1().equals("earthquake")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Earthquake</option>
                                        <option value='flood' <% if(answers.getNatural_disaster_1()!=null){if (answers.getNatural_disaster_1().equals("flood")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Flood</option>
                                        <option value='hurricane' <% if(answers.getNatural_disaster_1()!=null){if (answers.getNatural_disaster_1().equals("hurricane")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Tropical Storm/Hurricane</option>
                                        <option value="tornado" <% if(answers.getNatural_disaster_1()!=null){if (answers.getNatural_disaster_1().equals("tornado")) {
                                                out.print("selected=\"selected\"");
                                            }} %>>Tornado</option>
                                    </select>
                                </div>
                                    

                                <div class="form-group">
                                    <input type="date"  id="date1" class="form-control" name="date" <% if (answers.getDate_1()!=null) {
                                                out.print("value=\""+answers.getDate_1()+"\"");
                                                    }%> placeholder="Date of Natural Disaster"   
                                                 onchange="record_passing(userid, algoid, 'answer_update_date_1: \t'+this.value)"  min="2013-01-01"  max="2014-12-31" required>
                                </div>
                                                
                                <div class="form-group">
                                   <select id="location1" class="form-control" name="location" onchange="record_passing(userid, algoid, 'answer_update_location_1: \t'+this.value)" required>
                                        <option value="">Choose Location...</option>
                                        <option value="Arizona"  <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("arizona")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Arizona</option>
                                        <option value='Arkansas' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("arkansas")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Arkansas</option>
                                        <option value="California" <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("california")) {
                                                out.print("selected=\"selected\"");
                                            }} %>>California</option>
                                        <option value='Colorado' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("colorado")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Colorado</option>
                                        <option value='Connecticut' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("connecticut")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Connecticut</option>
                                        <option value='Delaware' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("delaware")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Delaware</option>
                                        <option value='Florida' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("florida")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Florida</option>
                                        <option value='Georgia' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("georgia")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Georgia</option>
                                        <option value='Idaho' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("idaho")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Idaho</option>
                                        <option value='Illinois' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("illinois")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Illinois</option>
                                        <option value='Indiana' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("indiana")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Indiana</option>
                                        <option value='Iowa' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("iowa")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Iowa</option>
                                        <option value='Kansas' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("kansas")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Kansas</option>
                                        <option value='Kentucky' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("kentucky")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Kentucky</option>
                                        <option value='Louisiana' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("louisiana")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Louisiana</option>
                                        <option value='Maine' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("maine")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Maine</option>
                                        <option value='Maryland' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("maryland")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Maryland</option>
                                        <option value='Massachusetts' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("massachusetts")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Massachusetts</option>
                                        <option value='Michigan' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("michigan")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Michigan</option>
                                        <option value='Minnesota' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("minnesota")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Minnesota</option>
                                        <option value='Mississippi' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("mississippi")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Mississippi</option>
                                        <option value='Missouri' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("missouri")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Missouri</option>
                                        <option value='Montana' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("montana")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Montana</option>
                                        <option value='Nebraska' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("nebraska")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Nebraska</option>
                                        <option value='Nevada' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("nevada")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Nevada</option>
                                        <option value='New Hampshire' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("New hampshire")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >New Hampshire</option>
                                        <option value='New Jersey' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("new jersey")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >New Jersey</option>
                                        <option value='New Mexico' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("new Mexico")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >New Mexico</option>
                                        <option value='New York' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("new york")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >New York</option>
                                        <option value='North Carolina' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("north carolina")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >North Carolina</option>
                                        <option value='North Dakota' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("north dakota")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >North Dakota</option>
                                        <option value='Ohio' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("ohio")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Ohio</option>
                                        <option value='Oklahoma' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("oklahoma")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Oklahoma</option>
                                        <option value='Oregon' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("oregon")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >North Dakota</option>
                                        <option value='Pennsylvania' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("pennsylvania")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Pennsylvania</option>
                                        <option value='Rhode Island' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("rhode island")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Rhode Island</option>
                                        <option value='South Carolina' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("south carolina")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >South Carolina</option>
                                        <option value='South Dakota' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("south dakota")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >South Dakota</option>
                                        <option value='Tennessee' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("tennessee")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Tennessee</option>
                                        <option value='Texas' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("texas")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Texas</option>
                                        <option value='Utah' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("utah")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Utah</option>
                                        <option value='Vermont' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("vermont")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Vermont</option>
                                        <option value='Virginia' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("virginia")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Virginia</option>
                                        <option value='Washington' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("washington")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Washington</option>
                                        <option value='West Virginia' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("west virginia")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >West Virginia</option>
                                        <option value='Wisconsin' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("wisconsin")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Wisconsin</option>
                                        <option value='Wyoming' <% if(answers.getLocation_1()!=null){if (answers.getLocation_1().toLowerCase().equals("wyoming")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Wyoming</option>
                                    </select>
                                    
                                    
                                </div>
                                           
                                           
                                <input type="submit" id="submit1" class="btn btn-primary" name="submit_button" 
                                       value="<% if (answers.getLocation_1() == null) {
                                                out.print("Submit");
                                            }else{
                                           out.print("Done...");
                                       }%>" <% 
                                               if(training_b == 1 && training_f == 1){
                                                   out.print("onclick=\"database_post('test','completion_task_1',nd1.value, date1.value, location1.value );\"");
                                               }
                                               %>
                                               > 
                              </fieldset>
                                </form>

                              
                                 
                               <form class="form-check col-md-12 alert alert-secondary" name = "answer2" onsubmit="return form_update(this);" action="all_tasks.jsp" > 
                                    <fieldset  <% if (answers.getNatural_disaster_2()!=null){ out.println("disabled=\"disabled\"");
                                            } %> >
                                <div class="form-group">
                                    <label>2nd Natural Disaster</label>
                                     <select id="nd2" class="form-control" name="nd" onchange="record_passing(userid, algoid, 'answer_update_nd_2: \t'+this.value)" required>
                                        <option value="">Choose Natural Disaster...</option>
                                        <option value="blizzard" <% if(answers.getNatural_disaster_2()!=null){ if (answers.getNatural_disaster_2().equals("blizzard")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Snow Storm/Blizzard</option>
                                        <option value='drought' <% if(answers.getNatural_disaster_2()!=null){if (answers.getNatural_disaster_2().equals("drought")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Drought</option>
                                        <option value="earthquake"  <% if(answers.getNatural_disaster_2()!=null){if (answers.getNatural_disaster_2().equals("earthquake")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Earthquake</option>
                                        <option value='flood' <% if(answers.getNatural_disaster_2()!=null){if (answers.getNatural_disaster_2().equals("flood")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Flood</option>
                                        <option value='hurricane' <% if(answers.getNatural_disaster_2()!=null){if (answers.getNatural_disaster_2().equals("hurricane")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Tropical Storm/Hurricane</option>
                                        <option value="tornado" <% if(answers.getNatural_disaster_2()!=null){if (answers.getNatural_disaster_2().equals("tornado")) {
                                                out.print("selected=\"selected\"");
                                            }} %>>Tornado</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <input type="date" id="date2" class="form-control" name="date" <% if (answers.getDate_2()!=null) {
                                                out.print("value=\""+answers.getDate_2()+"\"");
                                            } %>  placeholder="Date of Natural Disaster"
                                                 onchange="record_passing(userid, algoid, 'answer_update_date_2: \t'+this.value)" min="2013-01-01"  max="2014-12-31"  required>                                    
                                </div>
                                <div class="form-group">
                                    <select id="location2" class="form-control" name="location" onchange="record_passing(userid, algoid, 'answer_update_location_2: \t'+this.value)" required>
                                        <option value="">Choose Location...</option>
                                        <option value="Arizona"  <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("arizona")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Arizona</option>
                                        <option value='Arkansas' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("arkansas")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Arkansas</option>
                                        <option value="California" <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("california")) {
                                                out.print("selected=\"selected\"");
                                            }} %>>California</option>
                                        <option value='Colorado' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("colorado")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Colorado</option>
                                        <option value='Connecticut' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("connecticut")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Connecticut</option>
                                        <option value='Delaware' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("delaware")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Delaware</option>
                                        <option value='Florida' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("florida")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Florida</option>
                                        <option value='Georgia' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("georgia")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Georgia</option>
                                        <option value='Idaho' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("idaho")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Idaho</option>
                                        <option value='Illinois' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("illinois")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Illinois</option>
                                        <option value='Indiana' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("indiana")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Indiana</option>
                                        <option value='Iowa' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("iowa")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Iowa</option>
                                        <option value='Kansas' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("kansas")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Kansas</option>
                                        <option value='Kentucky' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("kentucky")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Kentucky</option>
                                        <option value='Louisiana' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("louisiana")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Louisiana</option>
                                        <option value='Maine' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("maine")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Maine</option>
                                        <option value='Maryland' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("maryland")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Maryland</option>
                                        <option value='Massachusetts' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("massachusetts")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Massachusetts</option>
                                        <option value='Michigan' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("michigan")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Michigan</option>
                                        <option value='Minnesota' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("minnesota")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Minnesota</option>
                                        <option value='Mississippi' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("mississippi")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Mississippi</option>
                                        <option value='Missouri' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("missouri")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Missouri</option>
                                        <option value='Montana' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("montana")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Montana</option>
                                        <option value='Nebraska' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("nebraska")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Nebraska</option>
                                        <option value='Nevada' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("nevada")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Nevada</option>
                                        <option value='New Hampshire' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("New hampshire")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >New Hampshire</option>
                                        <option value='New Jersey' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("new jersey")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >New Jersey</option>
                                        <option value='New Mexico' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("new Mexico")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >New Mexico</option>
                                        <option value='New York' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("new york")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >New York</option>
                                        <option value='North Carolina' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("north carolina")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >North Carolina</option>
                                        <option value='North Dakota' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("north dakota")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >North Dakota</option>
                                        <option value='Ohio' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("ohio")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Ohio</option>
                                        <option value='Oklahoma' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("oklahoma")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Oklahoma</option>
                                        <option value='Oregon' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("oregon")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >North Dakota</option>
                                        <option value='Pennsylvania' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("pennsylvania")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Pennsylvania</option>
                                        <option value='Rhode Island' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("rhode island")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Rhode Island</option>
                                        <option value='South Carolina' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("south carolina")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >South Carolina</option>
                                        <option value='South Dakota' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("south dakota")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >South Dakota</option>
                                        <option value='Tennessee' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("tennessee")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Tennessee</option>
                                        <option value='Texas' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("texas")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Texas</option>
                                        <option value='Utah' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("utah")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Utah</option>
                                        <option value='Vermont' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("vermont")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Vermont</option>
                                        <option value='Virginia' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("virginia")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Virginia</option>
                                        <option value='Washington' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("washington")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Washington</option>
                                        <option value='West Virginia' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("west virginia")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >West Virginia</option>
                                        <option value='Wisconsin' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("wisconsin")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Wisconsin</option>
                                        <option value='Wyoming' <% if(answers.getLocation_2()!=null){if (answers.getLocation_2().toLowerCase().equals("wyoming")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Wyoming</option>
                                    </select>
                                </div>
                                <input type="submit" id="submit2" class="btn btn-primary" name="submit_button" 
                                       value="<% if (answers.getLocation_2() == null) {
                                                out.print("Submit");
                                            }else{
                                           out.print("Done...");
                                       }%>"  <% 
                                               if(training_b == 1 && training_f == 1){
                                                   out.print("onclick=\"database_post('test','completion_task_2',nd2.value, date2.value, location2.value );\"");
                                               }
                                               %> >
                              </fieldset>
                               </form>
                              
                              <form class="form-check col-md-12 alert alert-primary" name = "answer3"  onsubmit="return form_update(this);" action="all_tasks.jsp" > 
                                  <fieldset  <% if (answers.getNatural_disaster_3()!=null){ out.println("disabled=\"disabled\"");
                                            } %> >
                                      <div class="form-group">
                                    <label>3rd Natural Disaster</label>
                                     <select id="nd3" class="form-control" name="nd" onchange="record_passing(userid, algoid, 'answer_update_nd_3: \t'+this.value)" required>
                                        <option value="">Choose Natural Disaster...</option>
                                        <option value="blizzard" <% if(answers.getNatural_disaster_3()!=null){ if (answers.getNatural_disaster_3().equals("blizzard")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Snow Storm/Blizzard</option>
                                        <option value='drought' <% if(answers.getNatural_disaster_3()!=null){if (answers.getNatural_disaster_3().equals("drought")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Drought</option>
                                        <option value="earthquake"  <% if(answers.getNatural_disaster_3()!=null){if (answers.getNatural_disaster_3().equals("earthquake")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Earthquake</option>
                                        <option value='flood' <% if(answers.getNatural_disaster_3()!=null){if (answers.getNatural_disaster_3().equals("flood")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Flood</option>
                                        <option value='hurricane' <% if(answers.getNatural_disaster_3()!=null){if (answers.getNatural_disaster_3().equals("hurricane")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Tropical Storm/Hurricane</option>
                                        <option value="tornado" <% if(answers.getNatural_disaster_3()!=null){if (answers.getNatural_disaster_3().equals("tornado")) {
                                                out.print("selected=\"selected\"");
                                            }} %>>Tornado</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <input type="date" id="date3" class="form-control" name="date" <% if (answers.getDate_3()!=null) {
                                                out.print("value=\""+answers.getDate_3()+"\"");
                                            } %>  placeholder="Date of Natural Disaster"
                                                 onchange="record_passing(userid, algoid, 'answer_update_date_3: \t'+this.value)" min="2013-01-01"  max="2014-12-31"  required>                                             
                                </div>
                                <div class="form-group">
                                    <select id="location3" class="form-control" name="location" onchange="record_passing(userid, algoid, 'answer_update_location_3: \t'+this.value)" required>
                                        <option value="">Choose Location...</option>
                                        <option value="Arizona"  <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("arizona")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Arizona</option>
                                        <option value='Arkansas' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("arkansas")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Arkansas</option>
                                        <option value="California" <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("california")) {
                                                out.print("selected=\"selected\"");
                                            }} %>>California</option>
                                        <option value='Colorado' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("colorado")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Colorado</option>
                                        <option value='Connecticut' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("connecticut")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Connecticut</option>
                                        <option value='Delaware' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("delaware")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Delaware</option>
                                        <option value='Florida' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("florida")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Florida</option>
                                        <option value='Georgia' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("georgia")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Georgia</option>
                                        <option value='Idaho' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("idaho")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Idaho</option>
                                        <option value='Illinois' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("illinois")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Illinois</option>
                                        <option value='Indiana' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("indiana")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Indiana</option>
                                        <option value='Iowa' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("iowa")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Iowa</option>
                                        <option value='Kansas' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("kansas")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Kansas</option>
                                        <option value='Kentucky' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("kentucky")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Kentucky</option>
                                        <option value='Louisiana' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("louisiana")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Louisiana</option>
                                        <option value='Maine' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("maine")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Maine</option>
                                        <option value='Maryland' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("maryland")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Maryland</option>
                                        <option value='Massachusetts' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("massachusetts")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Massachusetts</option>
                                        <option value='Michigan' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("michigan")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Michigan</option>
                                        <option value='Minnesota' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("minnesota")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Minnesota</option>
                                        <option value='Mississippi' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("mississippi")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Mississippi</option>
                                        <option value='Missouri' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("missouri")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Missouri</option>
                                        <option value='Montana' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("montana")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Montana</option>
                                        <option value='Nebraska' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("nebraska")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Nebraska</option>
                                        <option value='Nevada' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("nevada")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Nevada</option>
                                        <option value='New Hampshire' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("New hampshire")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >New Hampshire</option>
                                        <option value='New Jersey' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("new jersey")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >New Jersey</option>
                                        <option value='New Mexico' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("new Mexico")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >New Mexico</option>
                                        <option value='New York' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("new york")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >New York</option>
                                        <option value='North Carolina' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("north carolina")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >North Carolina</option>
                                        <option value='North Dakota' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("north dakota")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >North Dakota</option>
                                        <option value='Ohio' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("ohio")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Ohio</option>
                                        <option value='Oklahoma' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("oklahoma")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Oklahoma</option>
                                        <option value='Oregon' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("oregon")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >North Dakota</option>
                                        <option value='Pennsylvania' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("pennsylvania")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Pennsylvania</option>
                                        <option value='Rhode Island' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("rhode island")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Rhode Island</option>
                                        <option value='South Carolina' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("south carolina")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >South Carolina</option>
                                        <option value='South Dakota' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("south dakota")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >South Dakota</option>
                                        <option value='Tennessee' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("tennessee")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Tennessee</option>
                                        <option value='Texas' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("texas")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Texas</option>
                                        <option value='Utah' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("utah")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Utah</option>
                                        <option value='Vermont' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("vermont")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Vermont</option>
                                        <option value='Virginia' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("virginia")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Virginia</option>
                                        <option value='Washington' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("washington")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Washington</option>
                                        <option value='West Virginia' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("west virginia")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >West Virginia</option>
                                        <option value='Wisconsin' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("wisconsin")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Wisconsin</option>
                                        <option value='Wyoming' <% if(answers.getLocation_3()!=null){if (answers.getLocation_3().toLowerCase().equals("wyoming")) {
                                                out.print("selected=\"selected\"");
                                            }} %> >Wyoming</option>
                                    </select>
                                </div>
                                <input type="submit" id="submit3" class="btn btn-primary" name="submit_button" 
                                       value="<% if (answers.getLocation_3() == null) {
                                                out.print("Submit");
                                            }else{
                                           out.print("Done...");
                                       }%>"  <% 
                                               if(training_b == 1 && training_f == 1){
                                                   out.print("onclick=\"database_post('test','completion_task_3',nd3.value, date3.value, location3.value );\"");
                                               }
                                               %> > 
                                 </fieldset>
                              </form>  
                                 <div class="form-check col-md-12 alert alert-warning">
                                     <b>Quick hints:</b>
                                     <ul style="text-align: justify;">
                                         <li>There are three trials in this experiment. </li>
                                         <li>Each trial contains three natural disasters.</li>
                                         <li>You need to search in the system with a query.</li>
                                         <li>The query may contain <b style="color:red;">ONE</b> or <b style="color:red;">MULTIPLE</b> natural disasters, e.g., floods, earthquake, blizzard ... </li>
                                     </ul>
                                 </div>
                                       <div class="form-check col-md-12 alert alert-warning" <% if(!algo.startsWith("baseline --to remove--")) out.print("style=\"visibility: hidden; display:inline;\"");%> >
                                     <div class="col-lg-12">
                                         <section class="range-slider">
                                             <h1><span id="labelTopK"></span></h1>
                                             <input id="rangeTopK" class="col-lg-12" value="<%= total_hits %>" min="1" max="<%= total_hits %>" step="1" type="range" 
                                                    onchange = "record_passing(userid, algoid, 'slider_topK_change: \t'+informationCollection())">
                                         </section>
                                     </div>
                                 </div>
                        </div>
                     </div>
                                 
                </nav>        
                            
              <main class="col-md-10 ml-sm-auto col-lg-10 pt-3 px-4">

                   <!--Make sure the form has the autocomplete function switched off:-->
                <form class="form-check" id="mapform">
                    <div class="row justify-content-center">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-10 autocomplete">
                                    <input id="keywords" type="text" name="keywords" class="form-control" value="<%out.print(keywords);%>" placeholder="Enter ONE or MULTIPLE natural disasters here, e.g., floods, earthquake, blizzard ...">
                                </div>
                                <div class="col-lg-2">
                                    <button type="submit" class="btn btn-primary" onclick="getLocation()">Search</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>                      
                                            
                        
                       <%
                       if(!algo.startsWith("baseline")){
                           out.println("<div class=\"col-xs-12\" style=\"height:10px;\"></div>");
                           out.println("<div class=\"row justify-content-center\" title=\"Show/hide filter.\">");
                                    for (int i = 0; i < filters.size(); i++) {
                                        
                                        out.println("<div id=\"b" + (i + 1) + "\"  class=\"col-sm col-lg-2\">");
                                        out.println("<div class=\"form-check checkbox-slider-lg checkbox-slider--a checkbox-slider-c" + (i + 1)+"\">");
                                        out.println("<label>");
                                        out.println("<input name = \"bbox" + (i + 1) + "\" type=\"checkbox\" checked><span>  " +"</span>");
                                        out.println("</label>");
                                        out.println("</div>");
                                        out.println("</div>");
                                    }
                         out.println("</div>");
                      }                 
                      %> 
                      
                                   
                                        
                    <div class="row fill">      
                        <div class="col-lg-12">
                            <section class="range-slider">
                                <h1><span id="rangeValues"></span></h1>
                                <input id="range1" class="col-lg-12" value="1357016400000" min="1357016400000" max="1420037287000" step="1000" type="range"
                                onchange = "record_passing(userid, algoid, 'slider_start_change: \t'+informationCollection())">
                                <input id="range2" class="col-lg-12"  value="1420037287000" min="1357016400000" max="1420037287000" step="1000" type="range"
                                onchange = "record_passing(userid, algoid, 'slider_end_change: \t'+informationCollection())">
                            </section>
                        </div>
                    </div> 
                      
   
                   <div class="row fill">
                        <div id="map" class="col-xl fill" style="height:80vh;"> 
                        </div>
                    </div>

                </main>

            </div>
        </div>

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->


        <script>
            function updateTextInput(val) {
                document.getElementById('alpha_label').innerHTML=val;
            }

            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: <%out.print(zoom);%>,
                center: new google.maps.LatLng(<%out.print(center_y);%>, <%out.print(center_x);%>),
                mapTypeId: google.maps.MapTypeId.ROADMAP
                });

            google.maps.event.addListener(map, 'zoom_changed', function () {
                zoomLevel = map.getZoom().toString();
                var records = informationCollection();
                record_passing(userid, algoid, "ZoomLevel:" + zoomLevel + "\t" + records);
            });


            google.maps.event.addListener(map, 'dragend', function () {
                center = map.getCenter().toString();
                var records = informationCollection();
                record_passing(userid, algoid, "MouseDrag: New Center:" + center + "\t" + records);
            });

//            document.querySelectorAll("input[type='checkbox']").forEach(function (element) {
//                element.addEventListener('change', function () {
//                    var bboxChecked = "";
//                    document.querySelectorAll("input[type='checkbox']").forEach(function (element) {
//                        if (element.checked) {
//                            bboxChecked = bboxChecked + element.name + ", ";
//                        }
//                    });
//                });
//            });

            var infowindow = new google.maps.InfoWindow();
            var i;

            <%
                int i = 0;
                int[] pos_sizes = new int[filters.size()];
                Arrays.fill(pos_sizes, 0);
                
                if (!algo.startsWith("baseline")) {
                    for (SetSelector.Filter filter : filters) {
                        i++;
                        String location = "var data_map" + i + " = [";
                        int j = 0;
                        for (Document doc : filter.getOutList()) {
                            j++;
                            String id = doc.get(Indexer.MID);
                            double x = Double.parseDouble(doc.get(Indexer.POS_X));
                            double y = Double.parseDouble(doc.get(Indexer.POS_Y));
                            String text = doc.get(Indexer.BODY).replaceAll("'", "\\\\'");
                            String author = doc.get(Indexer.SENDER);
                            Date date = new Date(Long.parseLong(doc.get(Indexer.DATE_STORE)));
                            String sign=doc.get(Indexer.TYPE);
                            if(!sign.equals("neg")){
                                pos_sizes[i-1] ++;
                            }
                            double p = sf.getScore(doc.get(Indexer.MID));
                            location += ("['" + id + "',"
                                    + "'<b>Author:</b> " + author + " <br/><b>Tweet:</b> " + text + "<br/><b>Date:</b> " + date.toString()  + "<br/><b>Relevance score:</b> " + Information.df.format(p) + "'," + 
                                    x + "," + 
                                    y + "," 
                                    + doc.get(Indexer.DATE_STORE) + 
                                    ",4,'"+
                                    sign+"',"+
                                    p+"],");
                           
                            
                        }
                        location += ("];");
                        out.println(location); 
                    //}

                    //i = 0;
                    //for (SetSelector.Filter filter : filters) {
                        // add tweets on the map.
                     //   i++;
                        
                        out.println("var markers" + i + " = [];");
                        out.println("for (i = 0; i < data_map" + i + ".length; i++) {");
                        out.println("marker = new google.maps.Marker({");
                        out.println("position: new google.maps.LatLng(data_map" + i + "[i][2], data_map" + i + "[i][3]),");
                        out.println("map: map,");
                        out.println("icon: { path: google.maps.SymbolPath.CIRCLE, fillColor: getColor(data_map" + i + "[i][7]), fillOpacity: 1, scale: 4, strokeColor: 'white', strokeWeight: 1 },");
                        out.println("date:data_map" + i + "[i][4],");
                        out.println("ranking:data_map" + i + "[i][7],");
                        out.println("});");
                        out.println("google.maps.event.addListener(marker, 'click', (function (marker, i) {");
                        out.println("return function () {");
                        out.println("infowindow.setContent(data_map" + i + "[i][1]);");
                        out.println("infowindow.open(map, marker);");
                        out.println("var records = informationCollection();");
                        out.println("record_passing(userid, algoid, 'clicking_tweet:'+data_map" + i + "[i][0]+'\\t'+records+'\\t'+ data_map" + i + "[i][6]);");
                        out.println("}");
                        out.println("})(marker, i));");
                        out.println("markers" + i + "[i] = marker");
                        out.println("}");  
                        
                        // Add bounding boxes.
                        out.println("var boundingBox" + i + " = new google.maps.Rectangle({");
                        out.println("strokeColor: '" + boundingboxcolor.get(i - 1) + "',");
                        out.println("strokeOpacity: 0.8,");
                        out.println("strokeWeight: 2,");
                        out.println("fillColor: '" + boundingboxcolor.get(i - 1) + "',");
                        out.println("fillOpacity: 0.35,");
                        out.println("map: map,");
                        out.println("bounds: {");
                        out.println("north: " + filter.getYmax() + ", ");
                        out.println("south:" + filter.getYmin() + ", ");
                        out.println("east:" + filter.getXmax() + ",");
                        out.println("west:" + filter.getXmin() + ",");
                        out.println("}");
                        out.println("});");
                        out.println("createClickablePoly(boundingBox" + i + ", \"<b>Top terms:</b> " + 
                                            filter.getStringTerms() + ".<br/><b>Time windows: </b>" + 
                                            new Date(filter.getT_start()).toString() + " <b>to</b> " + 
                                            new Date(filter.getT_end()).toString() + " .<br/><b>Filter perormance: </b>" + 
                                            Information.df.format(filter.getPerformance()) +"**tweets_size:" +filter.getOutList().size()
                                                    +",pos_tweets_size:"+pos_sizes[i-1]+"\");");

                        // events for filter buttons.
                        out.println("document.getElementById(\"b" + i + "\").onchange = function () {");
                        out.println("var behavior = ''");                        
                        out.println("var filter_infor = \" tweets_size:"+filter.getOutList().size()+",pos_tweets_size:"+pos_sizes[i-1]+"\";");
                        out.println("var tweetsID = ''");

                        out.println("if (boundingBox" + i + ".getMap() != null) {");
                        out.println("behavior = 'removing_filter:   '"+"+filter_infor;");
                        
                        out.println("tweetsID += 'removing_filter: ';"); 
                        out.println("boundingBox" + i + ".setMap(null);");
                        out.println("for (i = 0; i < data_map" + i + ".length; i++) {");
                        out.println("markers" + i + "[i].setMap(null);");
                        out.println("tweetsID += data_map" + i + "[i][0]+',';");
                        out.println("}"); 

                        out.println("} else {");
                        out.println("boundingBox" + i + ".setMap(map);");
                         out.println("behavior = 'adding_filter:    '"+"+filter_infor;");                       
                        out.println("tweetsID += 'adding_filter: ';");
                        out.println("for (i = 0; i < data_map" + i + ".length; i++) {");
                        out.println("markers" + i + "[i].setMap(map);");
                        out.println("tweetsID += data_map" + i + "[i][0]+',';");
                        out.println("}");
                        out.println("getVals();");
                        out.println("}");
                        
                        out.println("var context = informationCollection()");
                        out.println("");
                        out.println("record_passing(userid, algoid, behavior+'\\t'+context);");
                        out.println("}");

                    }
                } else if (algo.startsWith("baseline") && hits != null) {

                    String location = "var data_map = [";
                    int j = 0;
                    for (Document doc : selector.TopDocs2List(hits)) {
                        j++;
                        String id = doc.get(Indexer.MID);
                        double x = Double.parseDouble(doc.get(Indexer.POS_X));
                        double y = Double.parseDouble(doc.get(Indexer.POS_Y));
                        String text = doc.get(Indexer.BODY).replaceAll("'", "\\\\'");
                        String author = doc.get(Indexer.SENDER);
                        Date date = new Date(Long.parseLong(doc.get(Indexer.DATE_STORE)));
                        String sign=doc.get(Indexer.TYPE);                        
                        double p = sf.getScore(doc.get(Indexer.MID));
                        location += ("['" + id + "','<b>Author:</b> " + author + " <br/><b>Tweet:</b> " + text
                                + "<br/><b>Date:</b> " + date.toString() + "<br/><b>Relevance score:</b> " + Information.df.format(p) + "'," + x + "," + y 
                                + "," + doc.get(Indexer.DATE_STORE) + ",4,'"+sign+"',"+j+","+p+"],");
                        
                    }
                    location += ("];");
                    out.println(location);

                    out.println("var markers = [];");
                    out.println("for (i = 0; i < data_map.length; i++) {");
                    out.println("marker = new google.maps.Marker({");
                    out.println("position: new google.maps.LatLng(data_map[i][2], data_map[i][3]),");
                    out.println("map: map,");
                    out.println("icon: { path: google.maps.SymbolPath.CIRCLE, fillColor: getColor(data_map[i][8]), fillOpacity: 1, scale: 4, strokeColor: 'white', strokeWeight: 1 },");
                    out.println("date:data_map[i][4],");
                    out.println("ranking:data_map[i][7],");
                    out.println("});");
                    out.println("google.maps.event.addListener(marker, 'click', (function (marker, i) {");
                    out.println("return function () {");
                    out.println("infowindow.setContent(data_map[i][1]);");
                    out.println("infowindow.open(map, marker);");
                    out.println("var records = informationCollection();");
                    out.println("record_passing(userid, algoid, 'clicking_tweet:'+data_map[i][0]+'\\t'+records+'\\t'+ data_map[i][6]);");
                    out.println("}");
                    out.println("})(marker, i));");
                    out.println("markers[i] = marker");
                    out.println("}");
                  
                }
            %>



        function createClickablePoly(rectangle, text) {
            var infoWindow = new google.maps.InfoWindow();
            google.maps.event.addListener(rectangle, 'click', function (event) {
                var text_array = text.split("**");
                infoWindow.setContent(text_array[0]);
                infoWindow.setPosition(event.latLng);
                infoWindow.open(map);
                var records = informationCollection();
                record_passing(userid, algoid, "clicking_bbox:" + text_array[1] + "\t" + records);
            });
        }

        function getLocation() {
            var center = map.getCenter();
            var bounds = map.getBounds();
            var ne = bounds.getNorthEast(); // LatLng of the north-east corner
            var sw = bounds.getSouthWest(); // LatLng of the south-west corder


            var ne_lat = document.createElement('input');
            ne_lat.setAttribute('type', 'hidden');
            ne_lat.name = 'ne_lat';
            ne_lat.value = ne.lat();

            var ne_lng = document.createElement('input');
            ne_lng.setAttribute('type', 'hidden');
            ne_lng.name = 'ne_lng';
            ne_lng.value = ne.lng();

            var sw_lat = document.createElement('input');
            sw_lat.setAttribute('type', 'hidden');
            sw_lat.name = 'sw_lat';
            sw_lat.value = sw.lat();

            var sw_lng = document.createElement('input');
            sw_lng.setAttribute('type', 'hidden');
            sw_lng.name = 'sw_lng';
            sw_lng.value = sw.lng();

            var center_lat = document.createElement('input');
            center_lat.setAttribute('type', 'hidden');
            center_lat.name = 'center_lat';
            center_lat.value = center.lat();

            var center_lng = document.createElement('input');
            center_lng.setAttribute('type', 'hidden');
            center_lng.name = 'center_lng';
            center_lng.value = center.lng();

            var zoom = document.createElement('input');
            zoom.setAttribute('type', 'hidden');
            zoom.name = 'zoom';
            zoom.value = map.getZoom();
            
            record_passing(userid, algoid, "new_query: \t"+informationCollection());
        }


<!-- Slider bar events -->
        window.onload = function () {
            // Initialize Sliders
            var slide1 = document.getElementById("range1");
            slide1.oninput = getVals;
            var slide2 = document.getElementById("range2");
            slide2.oninput = getVals;
            getVals(); 
            
            var rangeTopK = document.getElementById("rangeTopK");
            rangeTopK.oninput = getTopKVals;
            getTopKVals(); 
        };
        
        function getTopKVals() {
            // Get slider values
            document.getElementById("range1").value=1357016400000;
            document.getElementById("range2").value=1420037287000;            
            document.getElementById("rangeValues").innerHTML="Date (dd-mm-yy): from: 01-01-2013 to: 31-12-2014";
            
            
            var rangeTopK = parseFloat(document.getElementById("rangeTopK").value);
            var displayElement = document.getElementById("labelTopK");
            displayElement.innerHTML = rangeTopK;
            
            <%
                i = 0;
                if (algo.startsWith("baseline") && hits != null) {

                    out.println("for (i = 0; i < markers.length; i++) {");
                    out.println("if (markers[i].ranking > rangeTopK){");
                    out.println("markers[i].setMap(null);");
                    out.println("} else {");
                    out.println("if (markers[i].getMap() == null) {");
                    out.println("markers[i].setMap(map);");
                    out.println("}");
                    out.println("}");
                    out.println("}");
                  
                }
            %>                
        }
        
        
        function timelog(){
            var slide1 = parseFloat(document.getElementById("range1").value);
            var slide2 = parseFloat(document.getElementById("range2").value);
            if (slide1 > slide2) {
                var tmp = slide2;
                slide2 = slide1;
                slide1 = tmp;
            }
            var date1 = new Date(slide1);
            var date2 = new Date(slide2);
            record_passing(userid, algoid, "Slider Change: ("+myFunction(date1)+","+myFunction(date2)+") \t"+informationCollection());
        }
            
        function myFunction(myDate) {
            var date = myDate.getDate();
            var month = myDate.getMonth();
            var year = myDate.getFullYear();

            function pad(n) {
                return n < 10 ? '0' + n : n;
            }

            var ddmmyyyy = pad(date) + "-" + pad(month + 1) + "-" + year;
            return ddmmyyyy;
        }
        
        
        function getVals() {
            document.getElementById("rangeTopK").value=<%= total_hits %>;
            document.getElementById("labelTopK").innerHTML=<%= total_hits %>;
            
            
            // Get slider values
            var slide1 = parseFloat(document.getElementById("range1").value);
            var slide2 = parseFloat(document.getElementById("range2").value);
            // Neither slider will clip the other, so make sure we determine which is larger
            if (slide1 > slide2) {
                var tmp = slide2;
                slide2 = slide1;
                slide1 = tmp;
            }

            var date1 = new Date(slide1);
            var date2 = new Date(slide2);
//            console.log(date1);
//            console.log(date2);
            var displayElement = document.getElementById("rangeValues");
            displayElement.innerHTML = "Date (dd-mm-yy): from: " + myFunction(date1) + " to: " + myFunction(date2);
            
            <%
                i = 0;
                if (!algo.startsWith("baseline")) {
                    for (SetSelector.Filter filter : filters) {
                        i++;
                        
                        out.println("if (boundingBox" + i + ".getMap() != null) {");

                        out.println("for (i = 0; i < markers" + i + ".length; i++) {");
                        out.println("if (markers" + i + "[i].date < date1 || markers" + i + "[i].date > date2) {");
                        out.println("markers" + i + "[i].setMap(null);");
                        out.println("} else {");
                        out.println("if (markers" + i + "[i].getMap() == null) {");
                        out.println("markers" + i + "[i].setMap(map);");
                        out.println("}");
                        out.println("}");
                        out.println("}");                       
                        
                        
                        out.println("}");

                    }
                } else if (algo.startsWith("baseline") && hits != null) {

                    out.println("for (i = 0; i < markers.length; i++) {");
                    out.println("if (markers[i].date < date1 || markers[i].date > date2) {");
                    out.println("markers[i].setMap(null);");
                    out.println("} else {");
                    out.println("if (markers[i].getMap() == null) {");
                    out.println("markers[i].setMap(map);");
                    out.println("}");
                    out.println("}");
                    out.println("}");
                  
                }
            %>
        }
            
<!-- log functions -->
        
        function informationCollection() {
            var keywords = document.getElementById("keywords").value;
//            var start = document.getElementById("start").value.toString();
//            var end = document.getElementById("end").value.toString();
//            var beta = document.getElementById("beta").value.toString();
            
            var num_filters = 0;
            var algo = "<%= session.getAttribute("algo")%>";
            //if (algo!= 'baseline'){
            //    var num_filters = document.getElementById("num_filters").value.toString();
            //}
            
//            var num_tweets = document.getElementById("num_tweets").value.toString();
//            var alpha = document.getElementById("alpha").value;
            var time_range = time_range_log();
            
            var slider_topK_range = document.getElementById("rangeTopK").value;
            
//            var records = "CONTEXT:Keywords:" + keywords + "\t" + "Start_Time:" + start + "\t" + "End_Time:" 
//                                    + start + "\t" + "Beta:" + beta + "\t"+ "Num_filters:" + num_filters + "\t" + "Num_tweets:" 
//                                    + num_tweets+ "\t"+ "Alpha:" + alpha + "\t" + time_range;

//            var records = "CONTEXT:Keywords:" + keywords + "\t"  + "Num_filters:" + num_filters + "\t" + time_range;
            var records = "CONTEXT:query:" + keywords + "\t"  + time_range + "\tslider_topK_range:" + slider_topK_range;
            return records;
        }
        
        function time_range_log(){
            var slide1 = parseFloat(document.getElementById("range1").value);
            var slide2 = parseFloat(document.getElementById("range2").value);
            if (slide1 > slide2) {
                var tmp = slide2;
                slide2 = slide1;
                slide1 = tmp;
            }
            var date1 = new Date(slide1);
            var date2 = new Date(slide2);
            var time_range = "time_range ("+myFunction(date1)+","+myFunction(date2)+")";
            
            return time_range;
        }        
         
        
        function form_update(form){
            var date = new Date(form.date.value);
            
             if(training_b == 0 || training_f == 0 ){
               
               if (form.nd.value != nds[0] && form.nd.value != nds[1] && form.nd.value != nds[2] ){          
                    switch(form.nd.value) {
                        case "drought":
                            if(form.location.value != 'California'  ||  form.date.value < '2013-12-14' || form.date.value > '2013-12-20' ){
                                alert("Incorrect answers! Please try again.");                
                                return false;
                            } else {
                                alert("Correct answers.");
                                task_state += 1;
                                var task_id = form.name.slice(-1).valueOf() - 1;
            
                                form.nd.disabled = true;
                                nds[task_id] = form.nd.value;

                                form.date.disabled = true;
                                dates[task_id] = form.date.value;

                                form.location.disabled = true;
                                locations[task_id] = form.location.value;
                                
                                form.submit_button.disabled = true;
                                form.submit_button.value = "Done...";
                                
                                database_post('test','completion_task_'+task_state, form.nd.value, form.date.value, form.location.value);
                                
                            
                                if(task_state == 3){
                                
                                    database_post('training',null,null, null, null );
                                    return true;
                                }
                            
                            return false;
                            } 
                            break;
                        case "flood":
                            if(form.location.value != 'Michigan'  ||  form.date.value < '2014-08-06' || form.date.value > '2014-08-11' ){
                                alert("Incorrect answers! Please try again.");                
                                return false;
                            }else {
                                alert("Correct answers.");
                                task_state += 1;
                                var task_id = form.name.slice(-1).valueOf() - 1;
            
                                form.nd.disabled = true;
                                nds[task_id] = form.nd.value;

                                form.date.disabled = true;
                                dates[task_id] = form.date.value;

                                form.location.disabled = true;
                                locations[task_id] = form.location.value;
                                
                                form.submit_button.disabled = true;
                                form.submit_button.value = "Done...";
                                
                                database_post('test','completion_task_'+task_state, form.nd.value, form.date.value, form.location.value);
                                
                                if(task_state == 3){
                                
                                    database_post('training',null,null, null, null );
                                    return true;
                                }
                                
                            
                                return false;
                            } 
                            break;
                        case "tornado":
                            if(form.location.value != 'Mississippi'  ||  form.date.value < '2013-02-03' || form.date.value > '2013-02-09' ){
                                alert("Incorrect answers! Please try again.");                
                                return false;
                            }else {
                                alert("Correct answers.");
                                task_state += 1;
                                var task_id = form.name.slice(-1).valueOf() - 1;
            
                                form.nd.disabled = true;
                                nds[task_id] = form.nd.value;

                                form.date.disabled = true;
                                dates[task_id] = form.date.value;

                                form.location.disabled = true;
                                locations[task_id] = form.location.value;
                                
                                form.submit_button.disabled = true;
                                form.submit_button.value = "Done...";
                                
                                database_post('test','completion_task_'+task_state, form.nd.value, form.date.value, form.location.value);
                                
                                
                                if(task_state == 3){
                                
                                    database_post('training',null,null, null, null );
                                    return true;
                                }
                                
                                return false;
                            } 
                            break;
                        default:
                            alert("Incorrect answers! Please try again."); 
                            return false;
                    }
                } else{
                    alert("Event already validated.");                
                    return false;
                }
                
            } else{
        
           task_state += 1;            
           var task_id = form.name.slice(-1).valueOf() - 1;
            
           form.nd.disabled = true;
           nds[task_id] = form.nd.value;
           
           form.date.disabled = true;
           dates[task_id] = form.date.value;
           
           form.location.disabled = true;
           locations[task_id] = form.location.value;

           var task_answer = "final_"+form.name +"\t"+"ND:"+"\t"+ nds[task_id] +"\t"+"date:"+"\t"+dates[task_id] 
                                            +"\t"+"location:"+"\t"+ locations[task_id];
           
           
                                    
                                    
                             
                                    
           record_passing(userid, algoid, task_answer);

           form.submit_button.disabled = true;
           form.submit_button.value = "Done...";
           
           if(task_state == 3){
                var total_answer = "answers_"+algoid+"\t"+
                                                 "ND1:"+"\t"+ nds[0] +"\t"+"date1:"+"\t"+dates[0] +"\t"+"location1:"+"\t"+ locations[0]+"\t"+
                                                 "ND2:"+"\t"+ nds[1] +"\t"+"date2:"+"\t"+dates[1] +"\t"+"location2:"+"\t"+ locations[1]+"\t"+
                                                 "ND3:"+"\t"+ nds[2] +"\t"+"date3:"+"\t"+dates[2] +"\t"+"location3:"+"\t"+ locations[2];
                                        
                record_passing(userid, algoid, total_answer);   
                return true;
           }else{
           return false;
           }
           }
        }
        
        function getColor(score){
        var color = Math.ceil((1-score) * (75 - 50) + 50);
            return "#" + componentToHex(color) + componentToHex(color) + componentToHex(color);
        }

        function componentToHex(c) {
            var hex = c.toString(16);
            return hex.length == 1 ? "0" + hex : hex;
        }
         
        
        </script>
        

    </body>

</html>
