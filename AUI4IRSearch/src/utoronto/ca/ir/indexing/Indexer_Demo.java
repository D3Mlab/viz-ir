/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utoronto.ca.ir.indexing;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import javafx.util.Pair;
import net.balusc.util.DateUtil;
import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.en.EnglishAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.DoublePoint;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.NumericDocValuesField;
import org.apache.lucene.document.StoredField;
import org.apache.lucene.document.StringField;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.store.FSDirectory;
import static utoronto.ca.ir.indexing.Indexer.BODY;
import static utoronto.ca.ir.indexing.Indexer.DATE;
import static utoronto.ca.ir.indexing.Indexer.DATE_SORT;
import static utoronto.ca.ir.indexing.Indexer.DATE_STORE;
import static utoronto.ca.ir.indexing.Indexer.MID;
import static utoronto.ca.ir.indexing.Indexer.POSITION;
import static utoronto.ca.ir.indexing.Indexer.POS_X;
import static utoronto.ca.ir.indexing.Indexer.POS_Y;
import static utoronto.ca.ir.indexing.Indexer.SENDER;
import unimelb.edu.au.tools.Functions;
import org.json.simple.parser.JSONParser;
import org.json.simple.JSONObject;

/**
 *
 * @author rbouadjenek
 */
public final class Indexer_Demo {

    Map<String, Pair<Double, Double>> locations = new HashMap<>();
    private final IndexWriter writer;
    private final Analyzer analyzer;

    public BufferedReader getBufferedReader(String file) throws FileNotFoundException {
        FileInputStream fstream = new FileInputStream(file);
        // Get the object of DataInputStream
        DataInputStream in = new DataInputStream(fstream);
        BufferedReader br = new BufferedReader(new InputStreamReader(in));
        return br;
    }

    public void loadLocations(String user_locations) throws FileNotFoundException, IOException {
        String str;
        BufferedReader br = getBufferedReader(user_locations);
        while ((str = br.readLine()) != null) {
            if (str.trim().startsWith("#")) {
                continue;
            }
            if (str.trim().length() == 0) {
                continue;
            }
            StringTokenizer st1 = new StringTokenizer(str, "\t");
            if (st1.countTokens() != 3) {
                continue;
            }
            String userid = st1.nextToken();
            Double posX = Double.parseDouble(st1.nextToken());
            Double posY = Double.parseDouble(st1.nextToken());
            locations.put(userid, new Pair<>(posX, posY));
        }
    }

    public Indexer_Demo(String indexDir, String user_locations) throws FileNotFoundException, IOException {
        loadLocations(user_locations);
        File indexDirFile = new File(indexDir);
        analyzer = new EnglishAnalyzer(MyStopWords.ENGLISH_STOP_WORDS_SET);
        IndexWriterConfig conf = new IndexWriterConfig(analyzer);
        conf.setUseCompoundFile(false);
//        conf.setCodec(new SimpleTextCodec());
        writer = new IndexWriter(FSDirectory.open(indexDirFile.toPath()), conf);
    }

    /**
     * This method lunches the indexing process.
     *
     * @param dataFile
     * @return
     * @throws Exception
     */
    public int index(String dataFile) throws Exception {
        BufferedReader br = getBufferedReader(dataFile);
        String str;
        JSONParser parser = new JSONParser();
        int i = getNumberofDocs();
        int j = 0;
        while ((str = br.readLine()) != null) {
            j++;
            if (str.trim().startsWith("#")) {
                continue;
            }
            if (str.trim().length() == 0) {
                continue;
            }
            if (str.startsWith("{\"screen_name\":")) {
                Object obj = parser.parse(str);
                JSONObject jsonObject = (JSONObject) obj;
                String mid = String.valueOf(i);
                String sender = (String) jsonObject.get("screen_name");
                String time = (String) jsonObject.get("created_at");
                SimpleDateFormat datetimeFormatter1 = new SimpleDateFormat(DateUtil.determineDateFormat(time));
                Date lFromDate1 = datetimeFormatter1.parse(time);
                Timestamp fromTS1 = new Timestamp(lFromDate1.getTime());
                long date = fromTS1.getTime();
                String tweet = (String) jsonObject.get("text");
                tweet = tweet.replace("\n", "").replace("\r", "");
                if (locations.containsKey(sender) && !tweet.startsWith("rt")) {
                    double posX = locations.get(sender).getKey();
                    double posY = locations.get(sender).getValue();
                    System.out.println(j + "- " + mid + "\t" + sender + "\t" + lFromDate1.toString() + "\t(" + posX + "," + posY + ")\t" + tweet);
                    double pos[] = new double[2];
                    pos[0] = posX;
                    pos[1] = posY;
                    Document doc = new Document();
                    doc.add(new StringField(MID, mid, Field.Store.YES));
                    doc.add(new DoublePoint(DATE, date));
                    doc.add(new StoredField(DATE_STORE, date));
                    doc.add(new NumericDocValuesField(DATE_SORT, date));
                    doc.add(new StringField(SENDER, sender, Field.Store.YES));
                    doc.add(new DoublePoint(POSITION, pos));
                    doc.add(new StoredField(POS_X, posX));
                    doc.add(new StoredField(POS_Y, posY));
                    doc.add(new VecTextField(BODY, tweet, Field.Store.YES));
                    writer.addDocument(doc);
                    i++;
                }
            }
        }
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
        String dataFile;
        String indexDir;
        String user_locations;
        if (args.length == 0) {
//        dataFile = "/Volumes/Macintosh HD/Users/rbouadjenek/Documents/AUI4IR_data/enron_data/raw_enron.txt";
//        indexDir = "/Volumes/Macintosh HD/Users/rbouadjenek/Documents/AUI4IR_data/raw_enron_index_v1.0/";

            dataFile = "/Volumes/Macintosh HD/Users/rbouadjenek/Documents/SocialMediaAnalysis/tweets2013-2014-v2.0/test.txt";
            indexDir = "/Volumes/Macintosh HD/Users/rbouadjenek/Documents/AUI4IR_data/raw_twitter_demo_index_v2.0/";
            user_locations = "/Volumes/Macintosh HD/Users/rbouadjenek/Documents/AUI4IR_data/twitter_data/user_locations.txt";

            System.err.println("ERROR: incorrect parameters for utoronto.ca.ir.indexing.Indexer! "
                    + "only " + args.length + " parameters :-(");
            System.err.println("Usage: java -jar AUI4IRSearch.jar [options]");
            System.err.println("[options] have to be defined in the following order:");
            System.err.println("[-dataDir]: directory of fthe collection");
            System.err.println("[-indexDir]: directory of the index");
        } else {
            dataFile = args[0];
            indexDir = args[1];
            user_locations = args[2];
        }
        long start = System.currentTimeMillis();
        Indexer_Demo indexer = new Indexer_Demo(indexDir, user_locations);
        int numIndexed = indexer.index(dataFile);
        long end = System.currentTimeMillis();
        System.out.println("-------------------------------------------------------------------------");
        long millis = (end - start);
        System.out.println("Indexing " + numIndexed + " files took " + Functions.getTimer(millis) + ".");
        System.out.println("Indexed " + indexer.getNumberofDocs() + " files in English.");
        System.out.println("-------------------------------------------------------------------------");
        indexer.close();
    }

}
