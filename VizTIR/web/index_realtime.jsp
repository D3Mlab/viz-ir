<%-- 
    Document   : Test
    Created on : 01/02/2018, 11:25:54 PM
    Author     : rbouadjenek
--%>
<%@page import="utoronto.ca.twitter.RealTimeTwitterIndexer"%>
<%@page import="org.apache.lucene.search.ScoreDoc"%>
<%@page import="org.apache.lucene.search.Scorer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.lucene.search.BooleanClause"%>
<%@page import="org.apache.lucene.search.BooleanQuery"%>
<%@page import="java.util.Date"%>
<%@page import="utoronto.ca.ir.indexing.Indexer"%>
<%@page import="org.apache.lucene.document.Document"%>
<%@page import="utoronto.ca.ir.evaluation.SetEvaluation"%>
<%@page import="utoronto.ca.ir.evaluation.SetF1_ScoreDemo"%>
<%@page import="utoronto.ca.ir.scoring.ScoringFunctionDemo"%>
<%@page import="org.apache.lucene.search.Query"%>
<%@page import="org.apache.lucene.search.TopDocs"%>
<%@page import="java.util.List"%>
<%@page import="utoronto.ca.ir.search.dichotomy.top.down.DichotomySelectorAllTD_Demo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    RealTimeTwitterIndexer indexer = new RealTimeTwitterIndexer("tmp_index/", "geolocation_index_v1.0/");
    String keywords;
    int num_tweets = 1000;
    if (request.getParameter("num_tweets") != null) {
        num_tweets = Integer.parseInt(request.getParameter("num_tweets"));
    }
    keywords = request.getParameter("keywords");
    if (keywords != null && !keywords.equals("")) {
        System.out.println(indexer.index(keywords, num_tweets));
    }
    indexer.close();

    DichotomySelectorAllTD_Demo selector = new DichotomySelectorAllTD_Demo("tmp_index/");
    //List<String> ids = selector.getData(100000);
    //Query q = selector.getIdsFilter(ids);
    //TopDocs hits1 = selector.executeFilter(q);

    double beta = 0.25;
    int num_filters = 5, zoom;
    String start, end;
    double xmin, xmax, ymin, ymax, center_x, center_y;

    if (request.getParameter("beta") != null) {
        beta = Double.parseDouble(request.getParameter("beta"));
    }
    if (request.getParameter("num_filters") != null) {
        num_filters = Integer.parseInt(request.getParameter("num_filters"));
    }
    if (request.getParameter("start") == null || request.getParameter("end") == null) {
        start = "2013-01-01";
        end = "2013-06-01";
    } else {
        start = request.getParameter("start");
        end = request.getParameter("end");
    }
    Query timeFilter = selector.getTimeFilter(start, end);

    Query positionFilter = null;
    if (request.getParameter("ne_lat") != null && request.getParameter("ne_lng") != null && request.getParameter("sw_lat") != null && request.getParameter("sw_lng") != null) {
        xmin = Double.parseDouble(request.getParameter("sw_lng"));
        xmax = Double.parseDouble(request.getParameter("ne_lng"));
        ymin = Double.parseDouble(request.getParameter("sw_lat"));
        ymax = Double.parseDouble(request.getParameter("ne_lat"));
        positionFilter = selector.getPositionFilter(ymin, xmin, ymax, xmax);
    }

    if (request.getParameter("center_lng") == null || request.getParameter("center_lat") == null) {
        center_x = -99;
        center_y = 39;
    } else {
        center_x = Double.parseDouble(request.getParameter("center_lng"));
        center_y = Double.parseDouble(request.getParameter("center_lat"));
    }

    if (request.getParameter("zoom") == null) {
        zoom = 4;

    } else {
        zoom = Integer.parseInt(request.getParameter("zoom"));
    }

    List<DichotomySelectorAllTD_Demo.Filter> filters = new ArrayList<>();

    BooleanQuery.Builder bqFinal = new BooleanQuery.Builder();
    bqFinal.add(timeFilter, BooleanClause.Occur.FILTER);
    if (positionFilter != null) {
        bqFinal.add(positionFilter, BooleanClause.Occur.FILTER);
    }
    if (keywords != null && !keywords.equals("")) {
        bqFinal.add(selector.getKeywordsFilter(keywords), BooleanClause.Occur.MUST);
    } else {
        keywords = "";
    }
    TopDocs hits = null;
    ScoringFunctionDemo sf = null;
    if (num_filters > 0 && !keywords.equals("")) {
        System.out.println("Query: " + bqFinal.build());
        hits = selector.is.search(bqFinal.build(), num_tweets);
        System.out.println("Hits= " + hits.totalHits);
        sf = new ScoringFunctionDemo(selector.getYBasedOnHits(hits));
        SetF1_ScoreDemo se = new SetF1_ScoreDemo(selector.getIds(hits), sf, beta);
        if (hits.totalHits > 0) {
            if (hits.scoreDocs[0].score > 0) {
                filters = selector.getTopFilters(hits, se, sf, num_filters);
            }
        }
    }
%>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="favicon.ico">

        <title>Visualisation tool</title>

        <!-- Bootstrap core CSS -->
        <link href="dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="dashboard.css" rel="stylesheet">
        <script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>
    </head>

    <body>
        <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
            <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Visualization tool</a>
            <ul class="navbar-nav px-3">
                <li class="nav-item text-nowrap">
                    <a class="nav-link" href="#">Sign out</a>
                </li>
            </ul>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <nav class="col-md-2 d-none d-md-block bg-light sidebar">
                    <div class="sidebar-sticky">
                        <ul class="nav flex-column"> 
                            <li class="nav-item">
                                <a class="nav-link active" href="#">
                                    <span data-feather="home"></span> Querying <span class="sr-only">(current)</span>
                                </a>
                            </li> 
                            <li class="nav-item">
                                <form class="form-check">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Query</label>
                                        <input type="text" class="form-control" name="keywords" value="<%out.print(keywords);%>">
                                    </div>
                                    <div class="form-group">
                                        <label>Date start</label>
                                        <input type="date" name="start" class="form-control" value="<%out.print(start);%>">
                                    </div>
                                    <div class="form-group">
                                        <label>Date end</label>
                                        <input type="date" name="end" class="form-control" value="<%out.print(end);%>">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">F-Measure Beta value</label>
                                        <input type="number" class="form-control" name="beta" min="0" max="4" step="0.01" value="<%out.print(beta);%>">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Number of filters</label>
                                        <input type="number" class="form-control" name="num_filters" min="0" max="20"  value="<%out.print(num_filters);%>">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Number of Tweets</label>
                                        <input type="number" class="form-control" name="num_tweets" min="500" max="10000" step="500"  value="<%out.print(num_tweets);%>">
                                    </div>
                                    <!--div class="form-group">
                                        <label for="exampleInputEmail1">Algorithm </label>
                                        <select class="form-control" disabled>                                            
                                            <option value="Dichotomy">Dichotomy</option>
                                            <option value="Greedy">Greedy</option>
                                            <option value="MILP">MILP</option>
                                        </select>
                                    </div-->
                                    <button type="submit" class="btn btn-primary" onclick="getLocation()">Search</button>
                                </form>

                            </li> 
                        </ul>

                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link active" href="#">
                                    <span data-feather="home"></span> List of top filters <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <%
                                for (int i = 0; i < filters.size(); i++) {
                                    out.println("<li class=\"nav-item\" id=\"b" + (i + 1) + "\">");
                                    out.println("<div class=\"form-check\">");
                                    out.println("<label class=\"checkbox-inline\">");
                                    out.println("<input type=\"checkbox\" checked> Filter " + (i + 1) + "</label>");
                                    out.println("</div>");
                                    out.println("</li>");
                                }
                            %>
                        </ul>


                    </div>
                </nav>

                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
                        <h1 class="h2">Dashboard </h1>
                        <h2 class="h3"><% if (hits != null) {
                                out.println("The query matched <font  color=\"red\"> " + hits.totalHits + " </font> tweets.");
                            } %></h2>                    
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

        <script type="text/javascript">
            var circle0 = {
                path: google.maps.SymbolPath.CIRCLE,
                fillColor: 'red',
                fillOpacity: 1,
                scale: 0,
                strokeColor: 'red',
                strokeWeight: 1
            };
            var circle1 = {
                path: google.maps.SymbolPath.CIRCLE,
                fillColor: 'red',
                fillOpacity: 1,
                scale: 4,
                strokeColor: 'white',
                strokeWeight: 1
            };
            var circle2 = {
                path: google.maps.SymbolPath.CIRCLE,
                fillColor: 'blue',
                fillOpacity: 1,
                scale: 4,
                strokeColor: 'white',
                strokeWeight: 1
            };

            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: <%out.print(zoom);%>,
                center: new google.maps.LatLng(<%out.print(center_y);%>, <%out.print(center_x);%>),
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });

            var infowindow = new google.maps.InfoWindow();
            var i;

            <%

                int i = 0;
                for (DichotomySelectorAllTD_Demo.Filter filter : filters) {
                    i++;
                    String location_red = "var locations_red" + i + " = [";
                    String location_blue = "var locations_blue" + i + " = [";
                    int j = 0;
                    for (Document doc : filter.getList()) {
                        j++;
                        double x = Double.parseDouble(doc.get(Indexer.POS_X));
                        double y = Double.parseDouble(doc.get(Indexer.POS_Y));
                        String text = doc.get(Indexer.BODY).replaceAll("'", "\\\\'");
                        String author = doc.get(Indexer.SENDER);
                        Date date = new Date(Long.parseLong(doc.get(Indexer.DATE_STORE)));
                        double p = sf.getScore(doc.get(Indexer.MID));
                        if (p >= 0.5) {
                            if (j < filter.getList().size()) {
                                location_red += ("['<b>Author:</b> " + author + " <br/><b>Tweet:</b> " + text + "<br/><b>Date:</b> " + date.toString() + "<br/><b>Relevance score:</b> " + p + "'," + x + "," + y + ",4],");
                            } else {
                                location_red += ("['<b>Author:</b> " + author + " <br/><b>Tweet:</b> " + text + "<br/><b>Date:</b> " + date.toString() + "<br/><b>Relevance score:</b> " + p + "'," + x + "," + y + ",4]");
                            }
                        } else {
                            if (j < filter.getList().size()) {
                                location_blue += ("['<b>Author:</b> " + author + " <br/><b>Tweet:</b> " + text + "<br/><b>Date:</b> " + date.toString() + "<br/><b>Relevance score:</b> " + p + "'," + x + "," + y + ",4],");
                            } else {
                                location_blue += ("['<b>Author:</b> " + author + " <br/><b>Tweet:</b> " + text + "<br/><b>Date:</b> " + date.toString() + "<br/><b>Relevance score:</b> " + p + "'," + x + "," + y + ",4]");
                            }
                        }
                    }
                    location_red += ("];");
                    location_blue += ("];");
                    out.println(location_red);
                    out.println(location_blue);
                }

                i = 0;
                for (DichotomySelectorAllTD_Demo.Filter filter : filters) {
                    // add tweets on the map.
                    i++;
                    out.println("var markers_red" + i + " = [];");
                    out.println("for (i = 0; i < locations_red" + i + ".length; i++) {");
                    out.println("marker = new google.maps.Marker({");
                    out.println("position: new google.maps.LatLng(locations_red" + i + "[i][1], locations_red" + i + "[i][2]),");
                    out.println("map: map,");
                    out.println("icon: circle1,");
                    out.println("});");
                    out.println("google.maps.event.addListener(marker, 'click', (function (marker, i) {");
                    out.println("return function () {");
                    out.println("infowindow.setContent(locations_red" + i + "[i][0]);");
                    out.println("infowindow.open(map, marker);");
                    out.println("}");
                    out.println("})(marker, i));");
                    out.println("markers_red" + i + "[i] = marker");
                    out.println("}");

                    out.println("var markers_blue" + i + " = [];");
                    out.println("for (i = 0; i < locations_blue" + i + ".length; i++) {");
                    out.println("marker = new google.maps.Marker({");
                    out.println("position: new google.maps.LatLng(locations_blue" + i + "[i][1], locations_blue" + i + "[i][2]),");
                    out.println("map: map,");
                    out.println("icon: circle2,");
                    out.println("});");
                    out.println("google.maps.event.addListener(marker, 'click', (function (marker, i) {");
                    out.println("return function () {");
                    out.println("infowindow.setContent(locations_blue" + i + "[i][0]);");
                    out.println("infowindow.open(map, marker);");
                    out.println("}");
                    out.println("})(marker, i));");
                    out.println("markers_blue" + i + "[i] = marker");
                    out.println("}");

                    // Add bounding boxes.
                    out.println("var boundingBox" + i + " = new google.maps.Rectangle({");
                    out.println("strokeColor: '#FF0000',");
                    out.println("strokeOpacity: 0.8,");
                    out.println("strokeWeight: 2,");
                    out.println("fillColor: '#FF0000',");
                    out.println("fillOpacity: 0.35,");
                    out.println("map: map,");
                    out.println("bounds: {");
                    out.println("north: " + filter.getYmax() + ", ");
                    out.println("south:" + filter.getYmin() + ", ");
                    out.println("east:" + filter.getXmax() + ",");
                    out.println("west:" + filter.getXmin() + ",");
                    out.println("}");
                    out.println("});");
                    out.println("createClickablePoly(boundingBox" + i + ", \"<b>Top terms:</b> " + filter.getStringTerms() + ".<br/><b>Time windows: </b>" + new Date(filter.getT_start()).toString() + " <b>to</b> " + new Date(filter.getT_end()).toString() + " .<br/><b>Filter perormance: </b>" + filter.getPerformance() + "\");");

                    // events for filter buttons.
                    out.println("document.getElementById(\"b" + i + "\").onchange = function () {");
                    out.println("if (boundingBox" + i + ".getMap() != null) {");
                    out.println("boundingBox" + i + ".setMap(null);");

                    out.println("for (i = 0; i < locations_red" + i + ".length; i++) {");
                    out.println("markers_red" + i + "[i].setMap(null);");
                    out.println("}");
                    out.println("for (i = 0; i < locations_blue" + i + ".length; i++) {");
                    out.println("markers_blue" + i + "[i].setMap(null);");
                    out.println("}");

                    out.println("} else {");
                    out.println("boundingBox" + i + ".setMap(map);");

                    out.println("for (i = 0; i < locations_red" + i + ".length; i++) {");
                    out.println("markers_red" + i + "[i].setMap(map);");
                    out.println("}");
                    out.println("for (i = 0; i < locations_blue" + i + ".length; i++) {");
                    out.println("markers_blue" + i + "[i].setMap(map);");
                    out.println("}");

                    out.println("}");
                    out.println("}");

                }
            %>

            function createClickablePoly(rectangle, text) {
                var infoWindow = new google.maps.InfoWindow();
                google.maps.event.addListener(rectangle, 'click', function (event) {
                    infoWindow.setContent(text);
                    infoWindow.setPosition(event.latLng);
                    infoWindow.open(map);
                });
            }

            function getLocation() {
                var center = map.getCenter();
                var bounds = map.getBounds();
                var ne = bounds.getNorthEast(); // LatLng of the north-east corner
                var sw = bounds.getSouthWest(); // LatLng of the south-west corder
                //var nw = new google.maps.LatLng(ne.lat(), sw.lng());
                //var se = new google.maps.LatLng(sw.lat(), ne.lng());
                //alert(ne + ", " + sw);
                //location.href("index3.html?name=" + encodeURIComponent(ne));


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

                document.getElementsByTagName('form')[0].appendChild(ne_lat);
                document.getElementsByTagName('form')[0].appendChild(ne_lng);
                document.getElementsByTagName('form')[0].appendChild(sw_lat);
                document.getElementsByTagName('form')[0].appendChild(sw_lng);

                document.getElementsByTagName('form')[0].appendChild(center_lat);
                document.getElementsByTagName('form')[0].appendChild(center_lng);

                document.getElementsByTagName('form')[0].appendChild(zoom);
            }
        </script>



    </body>

</html>
