package sparkcaculate;
import org.apache.spark.SparkConf;
import org.apache.spark.api.java.JavaPairRDD;
import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.api.java.JavaSparkContext;
import org.apache.spark.api.java.function.Function;
import org.apache.spark.api.java.function.PairFunction;
import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.RowFactory;
import org.apache.spark.sql.SQLContext;
import org.apache.spark.sql.types.DataTypes;
import org.apache.spark.sql.types.StructType;
import scala.Tuple2;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

public class CollectRating {
    private static String url = "jdbc:mysql://localhost:3306/sunflower?serverTimezone=GMT%2B8";
    private static SQLContext session=null;
    private static Properties connectionProperties=null;

    public static SQLContext InitSpark(){
        SparkConf conf=new SparkConf().setMaster("local").setAppName("SunflowerApp");
        JavaSparkContext ctx=new JavaSparkContext(conf);
        session=new SQLContext(ctx);
        return session;
    }
    public static Properties InitMysql(){
        //增加数据库的用户名(user)密码(password),指定test数据库的驱动(driver)
        connectionProperties = new Properties();
        connectionProperties.put("user","root");
        connectionProperties.put("password","17311538909ch");
        connectionProperties.put("driver","com.mysql.cj.jdbc.Driver");
        return connectionProperties;
    }

    public static void CollectRating(){
        session=InitSpark();
        connectionProperties=InitMysql();
        JavaRDD<Row> dataset=session.read().jdbc(url,"ratings",connectionProperties).select("movieId","rating").toJavaRDD();
        JavaPairRDD<String,Double> javaRDD=dataset.mapToPair(new PairFunction<Row,String, Double>() {
            private static final long serialVersionUID = 1L;
            @Override
            public Tuple2<String,Double> call(Row row) throws Exception {

                return new Tuple2<String,Double>((String)row.get(0),(Double) row.get(1));
            }
        });
        JavaPairRDD<String,Iterable<Double>> result=javaRDD.groupByKey();
        JavaRDD<Row> finalresult=result.map(new Function<Tuple2<String, Iterable<Double>>, Row>() {

            private static final long serialVersionUID = 1L;
            @Override
            public Row call(Tuple2<String, Iterable<Double>> stringIterableTuple2) throws Exception {
                Double sum= Double.valueOf(0);
                int i=0;
                String movieid=stringIterableTuple2._1();
                for (Iterator<Double> it = stringIterableTuple2._2.iterator(); it.hasNext(); ) {
                    sum += it.next();
                    i+=1;
                }
                return RowFactory.create(movieid,Double.valueOf(new DecimalFormat("######0.00").format(sum/i)));
            }
        });
        List structFields = new ArrayList();
        structFields.add(DataTypes.createStructField("movieId",DataTypes.StringType,true));
        structFields.add(DataTypes.createStructField("rating",DataTypes.DoubleType,true));
        //构建StructType，用于最后DataFrame元数据的描述
        StructType structType = DataTypes.createStructType(structFields);
        Dataset ratingdataset=session.createDataFrame(finalresult,structType);
        ratingdataset.write().mode("Overwrite").jdbc(url,"rating",connectionProperties);


    }
}
