package utoronto.ca.ir.indexing;

import java.io.File;
import java.text.ParseException;
import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.en.EnglishAnalyzer;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.search.BooleanClause;
import org.apache.lucene.search.BooleanQuery;
import org.apache.lucene.search.Query;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import utoronto.ca.ir.search.bps.BPSSelector;


public class update_indexer {

           public static void main(String[] args) throws ParseException, Exception {
                String dir = "/home/admin/apache-tomcat-8.0.27/bin/ND_data_index_v1.0";
                File Index_Dir = new File(dir);
                Directory d = FSDirectory.open(Index_Dir.toPath());
		
                Analyzer analyzer = new EnglishAnalyzer(MyStopWords.ENGLISH_STOP_WORDS_SET);
                IndexWriterConfig conf = new IndexWriterConfig(analyzer);
                conf.setUseCompoundFile(false);
		
                IndexWriter writer = new IndexWriter(d,conf);

                BPSSelector selector = new BPSSelector(dir);
                Query qt = selector.getTimeFilter("01/01/2013", "12/31/2014"); // "month/day/year"

                double xmin = 25.118457;
                double ymin = -124.732621;
                double xmax = 49.306828;
                double ymax = -66.963142;

                Query q_total = selector.getPositionFilter(0.0, -200.0, 200.0, 0.0);
                Query qp_n = selector.getPositionFilter(xmin, ymin, xmax, ymax);

                BooleanQuery.Builder builder = new BooleanQuery.Builder();
                builder.add(q_total, BooleanClause.Occur.SHOULD);
                //builder.add(qp_n, BooleanClause.Occur.MUST_NOT);
                builder.add(qt, BooleanClause.Occur.MUST_NOT);

                //Note: Line 44 and 45 should be executed separately

                Query q = builder.build();

                writer.deleteDocuments(q);
                writer.commit();
                writer.flush();
        }

}
