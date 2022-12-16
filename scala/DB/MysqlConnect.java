package scala.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class  MysqlConnect {

    public Connection getConnection() {
        Connection conn =  null ;
        String url =  "jdbc:mysql://localhost:3306/sunflower?serverTimezone=GMT%2B8" ;
        String user =  "root" ;
        String password =  "123456" ;
        try  {
            if  (conn ==  null ) {
                Class.forName( "com.mysql.cj.jdbc.Driver" ).newInstance();
                conn = DriverManager.getConnection(url, user, password);
                System.out.println("连接成功");
            }
        } catch  (Exception e) {
            System.out.println( "连接失败" );
            e.printStackTrace();
            System.out.println(e.getStackTrace());
            return  null ;
        }
        return  conn;
    }
    public static void main(String[] args) {
        MysqlConnect cc =new MysqlConnect();
        Connection con = cc.getConnection();
    }

    }
