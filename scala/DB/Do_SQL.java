package scala.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Do_SQL {
    //连接数据库
    public int modifyDate(String sql, Object[] obj) {
        int result=0;
        Connection conn=new MysqlConnect().getConnection();
        try {
            PreparedStatement ps=conn.prepareStatement(sql);
            for(int i=0;i<obj.length;i++) {
                ps.setObject(i+1, obj[i]);
            }
            result=ps.executeUpdate();
            conn.close();
        }catch (Exception e) {
            // TODO: handle exception
//            e.printStackTrace();
            System.out.println(e.getStackTrace());
            System.out.println("修改用户失败，请检查");
        }
        return result;
    }

    //查询对应的SQL操作
    public ResultSet getDate(String sql,Object [] obj){
        Connection conn=new MysqlConnect().getConnection();
        ResultSet rs=null;
        try {
            PreparedStatement ps=conn.prepareStatement(sql);
            for(int i=0;i<obj.length;i++) {
                ps.setObject(i+1, obj[i]);
            }
            rs=ps.executeQuery();
        }catch (Exception e) {
            // TODO: handle exception
            System.out.println(e.getStackTrace());
            System.out.println("获取用户失败，请检查");
        }
        return rs;
    }
}
