package scala.SparkRDD;

/**
 * 此方法中InitSpark()函数设置spark配置
 * FuzzyFilter(String str)需要传递输入的字符串，函数调用InitSpark()并实现模糊过滤
 */
import scala.entity.movie;
import net.sf.json.JSONArray;
import org.apache.spark.SparkConf;
import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.api.java.JavaSparkContext;
import org.apache.spark.api.java.function.Function;

import java.util.List;

public class FuzzyRDD {
    public static JavaSparkContext InitSpark(){
        SparkConf conf=new SparkConf().setAppName("CollectType").setMaster("local");
        JavaSparkContext ctx=new JavaSparkContext(conf);
        return ctx;
    }
    /*调用spark配置函数
     * 实现模糊过滤
     */
    public static JSONArray FuzzyFilter(String str){
        JavaSparkContext ctx=InitSpark();
        JavaRDD<String> lines=ctx.textFile("hdfs://172.25.73.176:9000/data/movies.csv");
        String header = lines.first();
        JavaRDD<String> startlins=lines.filter(new Function<String, Boolean>() {
            private static final long serialVersionUID = 1L;
            @Override
            public Boolean call(String s) throws Exception {
                String[] strings = s.split(",(?=(?:[^\\\"]*\\\"[^\\\"]*\\\")*[^\\\"]*$)");
                String name = strings[1];
                if (name.indexOf("\"") == 0) {
                    name = name.substring(1, name.length());   //去掉第一个 "
                }
                if (name.lastIndexOf("\"") == (name.length() - 1)) {
                    name = name.substring(0, name.length() - 1);  //去掉最后一个 "
                }
                String[] search1 = str.split("[,\\. ]");//以多种方式分割传递来的参数
                int count = 0;
                for (int i = 0; i < search1.length; i++) {
                    if (name.contains(search1[i])) {
                        count += 1;
                    }
                }
                if (count == search1.length && !s.equals(header)) {
                    return true; //满足都包含的条件下返回
                }
                return false;
            }
        });
        JavaRDD<movie> movielist=startlins.map(new Function<String, movie>() {
            private static final long serialVersionUID = 1L;
            @Override
            public movie call(String s) throws Exception {
                String[] strings=s.split(",(?=(?:[^\\\"]*\\\"[^\\\"]*\\\")*[^\\\"]*$)");
                movie mo=new movie();
                mo.setMovieId(strings[0]);
                mo.setfTitle(strings[1]);
                mo.setfGenres(strings[2]);
                return mo;
            }
        });
        List<movie> movies=movielist.collect();//用collect()将rdd转为list
        JSONArray json= JSONArray.fromObject(movies);
        ctx.stop();
        return json;
    }
}
