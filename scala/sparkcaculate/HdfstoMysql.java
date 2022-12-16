package scala.sparkcaculate;

import org.apache.spark.SparkConf;
import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.api.java.JavaSparkContext;
import org.apache.spark.api.java.function.Function;
import org.apache.spark.sql.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.SQLContext;
import org.apache.spark.sql.types.DataTypes;
import org.apache.spark.sql.types.StructType;


public class HdfstoMysql {

        public static void main(String[] args) {
            SparkConf conf=new SparkConf().setAppName("movetomysql").setMaster("local");//这个什么意思
            JavaSparkContext ctx=new JavaSparkContext(conf);
            SQLContext sqlContext = new SQLContext(ctx);
            //读取mysql数据
            JavaRDD javaRDD=writetomysql(ctx);
            readMySQL(javaRDD,sqlContext);
            ctx.stop();
        }
        // @Test
        public static JavaRDD writetomysql(JavaSparkContext ctx){
            JavaRDD<String> lines=ctx.textFile("hdfs://172.25.73.176:9000/data/ml-latest/movie/tags.csv");//这里的路径记得修改
            String header = lines.first();
            JavaRDD<String> movies =lines.filter((String row) -> {
                return !row.equals(header);
            });
            System.out.println(movies.count());
            JavaRDD<Row> moviesJavaRDD=movies.map(new Function<String, Row>() {

                private static final long serialVersionUID = 1L;
                @Override
                public Row call(String line) {
                    String[] ml = line.split(",(?=(?:[^\\\"]*\\\"[^\\\"]*\\\")*[^\\\"]*$)");
//                    return RowFactory.create(ml[0],ml[1],ml[2]);
                    return RowFactory.create(ml[0],ml[1],(ml[2]),Integer.valueOf(ml[3]));
//                    return RowFactory.create(ml[0],ml[1],Float.valueOf(ml[2]),Integer.valueOf(ml[3]));
                }
            });
            System.out.println(moviesJavaRDD.count());
            return moviesJavaRDD;

        }
        public static void readMySQL(JavaRDD javaRDD,SQLContext sqlContext){
            String url = "jdbc:mysql://localhost:3306/sunflower?serverTimezone=GMT%2B8";
            //查找的表名
            String table = "tags";
//            String table = "Movie";
//            String table = "ratings";
            //增加数据库的用户名(user)密码(password),指定test数据库的驱动(driver)
            Properties connectionProperties = new Properties();
            connectionProperties.put("user","root");
            connectionProperties.put("password","17311538909ch");
            connectionProperties.put("driver","com.mysql.cj.jdbc.Driver");

            //SparkJdbc读取Postgresql的products表内容
            //System.out.println("读取test数据库中的user_test表内容");
            // 读取表中所有数据
            List structFields = new ArrayList();
//            structFields.add(DataTypes.createStructField("userId",DataTypes.StringType,true));
//            structFields.add(DataTypes.createStructField("movieId",DataTypes.StringType,true));
//            structFields.add(DataTypes.createStructField("rating",DataTypes.FloatType,true));
//            structFields.add(DataTypes.createStructField("timestamp",DataTypes.IntegerType,true));
            structFields.add(DataTypes.createStructField("userId",DataTypes.StringType,true));
            structFields.add(DataTypes.createStructField("mId",DataTypes.StringType,true));
            structFields.add(DataTypes.createStructField("tag",DataTypes.StringType,true));
            structFields.add(DataTypes.createStructField("timestamp",DataTypes.IntegerType,true));
            //构建StructType，用于最后DataFrame元数据的描述
            StructType structType = DataTypes.createStructType(structFields);
            Dataset dataset=sqlContext.createDataFrame(javaRDD,structType);
            dataset.write().mode("Overwrite").jdbc(url,table,connectionProperties);
            //显示数据

        }
    }


