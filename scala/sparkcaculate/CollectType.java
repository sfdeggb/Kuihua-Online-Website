package sparkcaculate;

//这里就调用了spark sql
import org.apache.spark.SparkConf;
import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.api.java.JavaSparkContext;
import org.apache.spark.api.java.function.Function;
import org.apache.spark.api.java.function.VoidFunction;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.RowFactory;
import org.apache.spark.sql.SQLContext;

import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class CollectType {
    private static String url = "jdbc:mysql://localhost:3306/sunflower?serverTimezone=GMT%2B8";
    public static JavaSparkContext InitSpark(){
        SparkConf conf=new SparkConf().setAppName("CollectType").setMaster("local");
        JavaSparkContext ctx=new JavaSparkContext(conf);
        return ctx;
    }
    public static Properties InitMysql(){
        //增加数据库的用户名(user)密码(password),指定test数据库的驱动(driver)
        Properties connectionProperties = new Properties();
        connectionProperties.put("user","root");
        connectionProperties.put("password","17311538909ch");
        connectionProperties.put("driver","com.mysql.cj.jdbc.Driver");
        return connectionProperties;
    }
    public static void FindType(){
        JavaSparkContext ctx=InitSpark();
        SQLContext sqlContext=new SQLContext(ctx);
        Properties properties=InitMysql();
        JavaRDD<Row> javaRDD=sqlContext.read().jdbc(url,"Movie",properties).select("fGenres").toJavaRDD();
        JavaRDD<Row> typeall=javaRDD.map(new Function<Row, Row>() {
            @Override
            public Row call(Row row) throws Exception {
                List<String> alltype=new ArrayList<String>();
                String str=row.toString();
                String[] linetype=str.replace("[","").replace("]","").split("\\|");
                int count=linetype.length;
                for(int i=0;i<count;i++){
                    if(!alltype.contains(linetype[i])) {
                        return RowFactory.create(linetype[i]);
                    }
                }
                return null;
            }
        });
        typeall.distinct().foreach(new VoidFunction<Row>() {
            @Override
            public void call(Row row) throws Exception {
                System.out.println(row.toString().replace("[","").replace("]",""));
            }
        });


    }
}
