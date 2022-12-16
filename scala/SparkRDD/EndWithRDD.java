package scala.SparkRDD;
/**
 * 此方法中InitSpark()函数设置spark配置
 * EndWithFilter(String str)需要传递输入的字符串，函数调用InitSpark()并实现后匹配
 */

import scala.entity.movie;
import net.sf.json.JSONArray;
import org.apache.spark.SparkConf;
import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.api.java.JavaSparkContext;
import org.apache.spark.api.java.function.Function;
import java.util.List;

public class EndWithRDD {
    public static JavaSparkContext InitSpark(){
        SparkConf conf=new SparkConf().setAppName("CollectType").setMaster("local");
        JavaSparkContext ctx=new JavaSparkContext(conf);
        return ctx;
    }
    /*调用spark配置函数
     * 实现后匹配
     */
    public static JSONArray EndWithFilter(String str){
        JavaSparkContext ctx=InitSpark();
        JavaRDD<String> lines=ctx.textFile("hdfs://172.25.73.176:9000/data/ml-latest/movies.csv");
        String header = lines.first();
        JavaRDD<String> startlins=lines.filter(new Function<String, Boolean>() {
            private static final long serialVersionUID = 1L;
            @Override
            public Boolean call(String s) throws Exception {
                String[] strings=s.split(",(?=(?:[^\\\"]*\\\"[^\\\"]*\\\")*[^\\\"]*$)");
                String name=strings[1];
                if(name.indexOf("\"")==0){
                        name = name.substring(1,name.length());   //去掉第一个 "
                }
                if(name.lastIndexOf("\"")==(name.length()-1)){
                     name = name.substring(0,name.length()-1);  //去掉最后一个 "

                }
                /*
                * 由于电影末尾都是（年份）结合实际后匹配将这一部分去除后过滤
                * */
                int j=name.lastIndexOf(" ");
                if(j!=-1){
                    name=name.substring(0,name.lastIndexOf(" "));
                }
                return name.endsWith(str)&&!s.equals(header);
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
        System.out.println(json.toString());
        ctx.stop();
        return json;
    }
}
