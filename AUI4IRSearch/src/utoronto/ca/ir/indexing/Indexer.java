/**
 * Copyright (c) 2018 Reda Bouadjenek
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package utoronto.ca.ir.indexing;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import org.apache.lucene.store.FSDirectory;
import unimelb.edu.au.tools.Functions;

/**
 * This class implements the indexer for the project.
 *
 * @author rbouadjenek
 */
public class Indexer {

    private final IndexWriter writer;
    private final Analyzer analyzer;
    public static final String MID = "mid";
    public static final String DATE = "date";
    public static final String DATE_STORE = "date_store";
    public static final String DATE_SORT = "date_sort";
    public static final String SENDER = "sender";
    public static final String RECIPIENTS = "recipients";
    public static final String POSITION = "position";
    public static final String POS_X = "pos_X";
    public static final String POS_Y = "pos_Y";
    public static final String SUBJECT = "subject";
    public static final String BODY = "body";
    public static final String TYPE = "type";
    public static final String RELEVANCE_SCORE = "relevance_score";

    public Indexer(String indexDir) throws IOException {
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
        long min = Integer.MAX_VALUE;
        long max = 0;
        try {
            FileInputStream fstream = new FileInputStream(dataFile);
            // Get the object of DataInputStream
            DataInputStream in = new DataInputStream(fstream);
            try (BufferedReader br = new BufferedReader(new InputStreamReader(in))) {
                String str;
                while ((str = br.readLine()) != null) {
                    if (str.trim().startsWith("#")) {
                        continue;
                    }
                    if (str.trim().length() == 0) {
                        continue;
                    }
                    StringTokenizer st1 = new StringTokenizer(str, "\t");
//                    if (st1.countTokens() != 8) {
//                        continue;
//                    }
                    String mid = st1.nextToken();
                    System.out.println(mid);
                    String time = st1.nextToken();
                    SimpleDateFormat datetimeFormatter1 = new SimpleDateFormat(DateUtil.determineDateFormat(time));
                    Date lFromDate1 = datetimeFormatter1.parse(time);
                    Timestamp fromTS1 = new Timestamp(lFromDate1.getTime());
                    min = Math.min(fromTS1.getTime(), min);
                    max = Math.max(fromTS1.getTime(), max);
                    long date = fromTS1.getTime();
                    String sender = st1.nextToken();
                    st1.nextToken();// to process the TO.
                    String recipients = st1.nextToken();
//                    System.out.println(st1.nextToken());
                    double posX = Double.parseDouble(st1.nextToken()) + Math.random() / 10;
                    double posY = Double.parseDouble(st1.nextToken()) + Math.random() / 10;
                    double y = Double.parseDouble(st1.nextToken());
                    String body = st1.nextToken();

                    Document doc = new Document();
                    doc.add(new StringField(MID, mid, Field.Store.YES));
                    doc.add(new DoublePoint(DATE, date));
                    doc.add(new StoredField(DATE_STORE, date));
                    doc.add(new NumericDocValuesField(DATE_SORT, date));

                    doc.add(new StringField(SENDER, sender, Field.Store.YES));
                    doc.add(new TextField(RECIPIENTS, recipients.replaceAll("TO", "").replaceAll("BCC", "").replaceAll("CC", "").replaceAll("\\|", "").trim(), Field.Store.YES));
                    double pos[] = new double[2];
                    pos[0] = posX;
                    pos[1] = posY;
                    doc.add(new DoublePoint(POSITION, pos));
                    doc.add(new StoredField(POS_X, posX));
                    doc.add(new StoredField(POS_Y, posY));
//                    doc.add(new LatLonPoint(POSITION, Double.parseDouble(posX),Double.parseDouble(posY)));
//                    doc.add(new VecTextField(SUBJECT, new StringReader(subject), Field.Store.NO));
                    doc.add(new StoredField(RELEVANCE_SCORE, y));

                    doc.add(new VecTextField(BODY, body, Field.Store.YES));
                    writer.addDocument(doc);
                }
            }
            System.out.println("min= " + min);
            System.out.println("max= " + max);
        } catch (IOException | NumberFormatException e) {
            e.printStackTrace();
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
//        if (args.length == 0) {
//        dataFile = "/Volumes/Macintosh HD/Users/rbouadjenek/Documents/AUI4IR_data/enron_data/raw_enron.txt";
//        indexDir = "/Volumes/Macintosh HD/Users/rbouadjenek/Documents/AUI4IR_data/raw_enron_index_v1.0/";

        dataFile = "/Volumes/Macintosh HD/Users/rbouadjenek/Documents/AUI4IR_data/twitter_data/raw_tweets_demo_2index.txt";
        indexDir = "/Volumes/Macintosh HD/Users/rbouadjenek/Documents/AUI4IR_data/raw_twitter_demo_index_v1.0/";

        System.err.println("ERROR: incorrect parameters for utoronto.ca.ir.indexing.Indexer! "
                + "only " + args.length + " parameters :-(");
        System.err.println("Usage: java -jar AUI4IRSearch.jar [options]");
        System.err.println("[options] have to be defined in the following order:");
        System.err.println("[-dataDir]: directory of fthe collection");
        System.err.println("[-indexDir]: directory of the index");
//        } else {
//            dataDir = args[0];
//            indexDir = args[1];
        long start = System.currentTimeMillis();
        Indexer indexer = new Indexer(indexDir);
        int numIndexed;
        try {
            numIndexed = indexer.index(dataFile);
            long end = System.currentTimeMillis();
            System.out.println("-------------------------------------------------------------------------");
            long millis = (end - start);
            System.out.println("Indexing " + numIndexed + " files took " + Functions.getTimer(millis) + ".");
            System.out.println("Indexed " + indexer.getNumberofDocs() + " files in English.");
            System.out.println("-------------------------------------------------------------------------");
        } finally {
            indexer.close();
        }
//        }
    }

}
