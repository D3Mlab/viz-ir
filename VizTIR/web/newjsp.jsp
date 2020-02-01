<%@page import="java.util.List"%>
<%@page import="utoronto.ca.ir.evaluation.SetF1_Score"%>
<%@page import="org.apache.lucene.search.TopDocs"%>
<%@page import="utoronto.ca.ir.scoring.ScoringFunctionDemo"%>
<%@page import="org.apache.lucene.search.TermQuery"%>
<%@page import="org.apache.lucene.index.Term"%>
<%@page import="utoronto.ca.ir.indexing.Indexer"%>
<%@page import="org.apache.lucene.search.BooleanQuery"%>
<%@page import="org.apache.lucene.search.BooleanClause"%>
<%@page import="org.apache.lucene.search.Query"%>
<%@page import="utoronto.ca.ir.search.clustering.XMeansFiltering"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/test.css" rel="stylesheet">
        
        <%
            XMeansFiltering selector = new XMeansFiltering("ND_data_index_v1.0/", "boolean", 1.0, 1.0);
        BooleanQuery.Builder bqFinal = new BooleanQuery.Builder();
        String start = "2013-01-01", end = "2015-01-01";

        Query timeFilter = selector.getTimeFilter(start, end);
        bqFinal.add(timeFilter, BooleanClause.Occur.FILTER);
        
        
        TermQuery neg = new TermQuery(new Term(Indexer.TYPE, "neg"));
        BooleanQuery.Builder bqNDs = new BooleanQuery.Builder();
        bqNDs.add(neg, BooleanClause.Occur.SHOULD);

        TermQuery pos1 = new TermQuery(new Term(Indexer.TYPE, "pos1"));
        TermQuery pos2 = new TermQuery(new Term(Indexer.TYPE, "pos7"));
        TermQuery pos3 = new TermQuery(new Term(Indexer.TYPE, "pos6"));
        bqNDs.add(pos1, BooleanClause.Occur.SHOULD);
        bqNDs.add(pos2, BooleanClause.Occur.SHOULD);
        bqNDs.add(pos3, BooleanClause.Occur.SHOULD);

        bqFinal.add(bqNDs.build(), BooleanClause.Occur.FILTER);

        bqFinal.add(selector.getKeywordsFilter("floods"), BooleanClause.Occur.MUST);
        System.out.println("Query: " + bqFinal.build());
        TopDocs hits = selector.is.search(bqFinal.build(), 1000);
        System.out.println("Hits= " + hits.totalHits);
        ScoringFunctionDemo sf = new ScoringFunctionDemo(selector.getYBasedOnHits(hits));
        SetF1_Score se = new SetF1_Score(selector.getIds(hits));
        if (hits.totalHits > 0) {
            selector.getTopFilters(hits, se, sf, 6);
        }
            
            %>
        
    </head>
    
</html>