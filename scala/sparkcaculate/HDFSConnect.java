package scala.sparkcaculate;

import org.junit.After;
import org.junit.Before;
import java.io.IOException;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.junit.Test;


public class HDFSConnect {
    private static Configuration conf = null;
    private static FileSystem fs = null;

    @Before
    public void connectHDFS() throws IOException {
        conf=new Configuration() ;
        conf.set("fs.default.name","hdfs://172.25.73.176:9000");
        System.setProperty("HADOOP_USER_NAME","HP");//设置用户防止，访问hdfs被拒绝。
        fs=FileSystem.get(conf);

    }
    @After
    public void close() throws IOException{
        if(fs!=null) {
            fs.close();
        }

    }
    @Test
    public void mkdir()throws IOException{
        if(!fs.exists(new Path("/data/movie"))){
            fs.mkdirs(new Path("/data/movie"));
        }
    }
    @Test
    public void DeleteFile() throws IOException{
        fs.delete(new Path("/data/movie"),true);//true递归删除

    }
    @Test
    public void PutFileToHDFS()throws IOException{
        //这个路径要改成自己的
        Path path1=new Path("C:/Users/HP/Desktop/网课文件/工程实践/ml-latest/movies");
        Path path2=new Path("/data");
        fs.copyFromLocalFile(path1,path2);
    }
}