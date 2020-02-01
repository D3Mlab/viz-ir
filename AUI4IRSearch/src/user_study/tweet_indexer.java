package user_study;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Random;
import java.util.StringTokenizer;
import net.balusc.util.DateUtil;
import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.en.EnglishAnalyzer;
import org.apache.lucene.codecs.simpletext.SimpleTextCodec;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.DoublePoint;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.NumericDocValuesField;
import org.apache.lucene.document.StoredField;
import org.apache.lucene.document.StringField;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.search.BooleanClause;
import org.apache.lucene.search.BooleanQuery;
import org.apache.lucene.search.Query;
import org.apache.lucene.store.FSDirectory;
import utoronto.ca.ir.indexing.Indexer;

import utoronto.ca.ir.indexing.MyStopWords;
import utoronto.ca.ir.indexing.VecTextField;
import unimelb.edu.au.tools.Functions;

public class tweet_indexer {

    private final IndexWriter writer;
    private final Analyzer analyzer;

    public static final String MID = "mid";
    public static final String DATE = "date";
    public static final String DATE_STORE = "date_store";
    public static final String DATE_SORT = "date_sort";
    public static final String SENDER = "sender";
    public static final String RECIPIENTS = "recipients";
    public static final String TYPE = "type";
    public static final String POSITION = "position";
    public static final String POS_X = "pos_X";
    public static final String POS_Y = "pos_Y";
    public static final String SUBJECT = "subject";
    public static final String BODY = "body";
    public static final String RELEVANCE_SCORE = "relevance_score";

    public tweet_indexer(String indexDir) throws IOException {
        File indexDirFile = new File(indexDir);
        analyzer = new EnglishAnalyzer(MyStopWords.ENGLISH_STOP_WORDS_SET);
        IndexWriterConfig conf = new IndexWriterConfig(analyzer);
        conf.setUseCompoundFile(false);
//        conf.setOpenMode(IndexWriterConfig.OpenMode.CREATE_OR_APPEND);
//        conf.setCodec(new SimpleTextCodec());
        writer = new IndexWriter(FSDirectory.open(indexDirFile.toPath()), conf);
    }

    public HashMap<String, List<double[]>> geoIndex(String csv) {

        List<String> statelist = new ArrayList<>();
        statelist.add("FL");
        statelist.add("OK");
        statelist.add("NC");
        statelist.add("CO");
        statelist.add("CA");
        statelist.add("NY");
        statelist.add("MA");
        statelist.add("MS");
        statelist.add("MI");
        //FL, OK, NC, CO, CA, NY, MA, MS. MI

        HashMap<String, List<double[]>> hsgeo = new HashMap<>();
        for (String st : statelist) {
            hsgeo.put(st, new ArrayList<>());
        }
        int id = 0;

        try {
            FileInputStream fstream = new FileInputStream(csv);
            // Get the object of DataInputStream
            DataInputStream in = new DataInputStream(fstream);
            try (BufferedReader br = new BufferedReader(new InputStreamReader(in))) {
                String str;
                while ((str = br.readLine()) != null) {
                    str = str.replace("\"", "");
                    String[] strline = str.split(",");
                    //System.out.println(statelist.contains(strline[2]));
                    if (statelist.contains(strline[2])) {
                        //System.out.println(strline[2]);
                        double[] pos = new double[2];
                        pos[0] = Double.parseDouble(strline[6]);
                        //System.out.println(strline[6]);
                        pos[1] = Double.parseDouble(strline[7]);
                        //System.out.println(strline[7]);
                        hsgeo.get(strline[2]).add(pos);
                        id++;
                    }
                }
            }
        } catch (IOException | NumberFormatException e) {
            e.printStackTrace();
        }
        return hsgeo;
    }

    public double[] rancity(String pos, HashMap<String, List<double[]>> geohs) {
        String key = null;
        if (pos.equals("pos1")) {
            key = "CO";
        } else if (pos.equals("pos2")) {
            key = "FL";
        } else if (pos.equals("pos3") || pos.equals("pos4") || pos.equals("pos10")) {
            key = "CA";
        } else if (pos.equals("pos5")) {
            key = "OK";
        } else if (pos.equals("pos6")) {
            key = "NC";
        } else if (pos.equals("pos7") || pos.equals("pos8")) {
            key = "NY";
        } else if (pos.equals("pos9")) {
            key = "MA";
        } else if (pos.equals("pos11")) {
            key = "MS";
        } else if (pos.equals("pos12")) {
            key = "MI";
        }
        Random rand = new Random();
        //System.out.println(geohs.get(key).size());
        double[] ranpos = geohs.get(key).get(rand.nextInt(geohs.get(key).size()));

        return ranpos;
    }

    /**
     * This method lunches the indexing process.
     *
     * @param dataFile
     * @return
     * @throws Exception
     */
    public int index(String dataFile, String csvfile) throws Exception {

        HashMap<String, List<double[]>> geoIndex = geoIndex(csvfile);

        try {
            FileInputStream fstream = new FileInputStream(dataFile);
            // Get the object of DataInputStream
            DataInputStream in = new DataInputStream(fstream);
            try (BufferedReader br = new BufferedReader(new InputStreamReader(in))) {
                String str;
                int mid = 0;

                while ((str = br.readLine()) != null) {
                    if (str.trim().startsWith("#")) {
                        continue;
                    }
                    if (str.trim().length() == 0) {
                        continue;
                    }
                    StringTokenizer st1 = new StringTokenizer(str, "\t");
                    if(st1.countTokens()!=6){
                        continue;
                    }
//                    if (st1.countTokens() != 8) {
//                        continue;
//                    }

                    //Sample: 1359666963000	NiaRadioNetwork	35.609289	-77.713073	neg	Toronto	is	awesome!
                    String time = st1.nextToken();
                    long date = Long.parseLong(time);

                    String sender = st1.nextToken();
//                    System.out.println(st1.nextToken());
                    double posX = Double.parseDouble(st1.nextToken()) + Math.random() / 10;
                    double posY = Double.parseDouble(st1.nextToken()) + Math.random() / 10;
                    String type = st1.nextToken();
                    //System.out.println(mid);
                    String body = st1.nextToken();

                    Document doc = new Document();
                    doc.add(new StringField(MID, String.valueOf(mid), Field.Store.YES));
                    doc.add(new DoublePoint(DATE, date));

                    doc.add(new StoredField(DATE_STORE, date));
                    doc.add(new NumericDocValuesField(DATE_SORT, date));

                    doc.add(new StringField(SENDER, sender, Field.Store.YES));
                    //System.out.println(type);
                    if (!type.equals("neg")) {
                        double[] pos = rancity(type, geoIndex);
                        doc.add(new DoublePoint(POSITION, pos));
                        doc.add(new StoredField(POS_X, pos[0]));
                        doc.add(new StoredField(POS_Y, pos[1]));
                    } else {
                        double[] pos = new double[2];
                        pos[0] = posX;
                        pos[1] = posY;
                        doc.add(new DoublePoint(POSITION, pos));
                        doc.add(new StoredField(POS_X, posX));
                        doc.add(new StoredField(POS_Y, posY));
                    }
                    doc.add(new StringField(TYPE, type, Field.Store.YES));
                    doc.add(new VecTextField(BODY, body, Field.Store.YES));
                    writer.addDocument(doc);

                    mid++;
                }
            }
        } catch (IOException | NumberFormatException e) {
            e.printStackTrace();
        }

        double[] lowerValues = new double[]{0.0, -200.0};
        double[] upperValues = new double[]{200.0, 0.0};
        Query q_total = DoublePoint.newRangeQuery(Indexer.POSITION, lowerValues, upperValues);

        lowerValues = new double[]{25.118457, -124.732621};
        upperValues = new double[]{49.306828, -66.963142};
        Query qp_n = DoublePoint.newRangeQuery(Indexer.POSITION, lowerValues, upperValues);

        BooleanQuery.Builder builder = new BooleanQuery.Builder();
        builder.add(q_total, BooleanClause.Occur.SHOULD);
        builder.add(qp_n, BooleanClause.Occur.MUST_NOT);
        //builder.add(qt, BooleanClause.Occur.MUST_NOT);

        //Line 44 and 45 should be executed separately
        Query q = builder.build();
        writer.deleteDocuments(q);
        return writer.numDocs();
    }

    /**
     * This method return the number of document in the index.
     *
     * @return
     */
    public int getNumberofDocs() {
        return writer.numDocs();
    }

    private void close() throws IOException {
        writer.close();
    }

    /**
     * @param args the command line arguments
     * @throws java.io.IOException
     */
    public static void main(String[] args) throws IOException, Exception {
        // TODO code application logic here
        String dataFile = "/media/Storage/reda/Desktop/Raw_data/total_all_offline_study.txt";
//        String indexDir = "/media/Storage/reda/netbeans-8.2/apache-tomcat-9.0.8/bin/ND_data_index_v6.2/";
        String indexDir = "/media/Storage/reda/Documents/AUI4IR_data/raw_twitter_index_v2.0/";
        String csvfile = "/media/Storage/reda/Desktop/Raw_data/uscitiesv1.4.csv";

        System.err.println("ERROR: incorrect parameters for utoronto.ca.ir.indexing.Indexer! "
                + "only " + args.length + " parameters :-(");
        System.err.println("Usage: java -jar AUI4IRSearch.jar [options]");
        System.err.println("[options] have to be defined in the following order:");
        System.err.println("[-dataDir]: directory of fthe collection");
        System.err.println("[-indexDir]: directory of the index");

        long start = System.currentTimeMillis();
        tweet_indexer indexer = new tweet_indexer(indexDir);
        int numIndexed;
        try {
            numIndexed = indexer.index(dataFile, csvfile);
            long end = System.currentTimeMillis();
            System.out.println("-------------------------------------------------------------------------");
            long millis = (end - start);
            System.out.println("Indexing " + numIndexed + " files took " + Functions.getTimer(millis) + ".");
            System.out.println("Indexed " + indexer.getNumberofDocs() + " files in English.");
            System.out.println("-------------------------------------------------------------------------");
        } finally {
            indexer.close();
        }

    }
}
