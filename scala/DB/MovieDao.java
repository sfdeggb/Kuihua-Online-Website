package scala.DB;
import scala.entity.mRating;
import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONSerializer;
import scala.entity.movie;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MovieDao {
    String url =  "jdbc:mysql://localhost:3306/sunflower?serverTimezone=GMT%2B8" ;
    String user =  "root" ;
    String password = "123456" ;

    //点击电影名看详情
    public JSON queryMovieByTitle(String title){
        movie m=null;
        Connection conn=null;
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        try{
            conn=new MysqlConnect().getConnection();
            String sql="select * from Movie where fTitle=?";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,title);
            rs=pstmt.executeQuery();
            if(rs.next()){
                String movieId=rs.getString("fId");
                String ftitle=rs.getString("fTitle");
                String fGenres=rs.getString("fGenres");
                m=new movie(movieId,ftitle,fGenres);
            }
            return JSONSerializer.toJSON(m);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        }finally {
            try{
                if(rs!=null) rs.close();
                if(pstmt!=null) pstmt.close();
                if(conn!=null) conn.close();

            }catch(SQLException e){
                e.printStackTrace();
            }
        }


    }

    //查询所有电影的前十（不分种类）
    public JSONArray queryTenFromAll(){
        List<mRating>movies= new ArrayList<>();
        mRating m=null;
        Connection conn=null;
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        conn=new MysqlConnect().getConnection();
        String sql="select * from movier order by rating desc limit 6";
        try {
            pstmt=conn.prepareStatement(sql);
            rs=pstmt.executeQuery();
            while(rs.next()){
                String fId=rs.getString("fId");
                String fTitle=rs.getString("fTitle");
                String fGenres=rs.getString("fGenres");
                double rating=rs.getDouble("rating");
                m=new mRating(fId,fTitle,fGenres,rating);
                //System.out.println(m);
                movies.add(m);
            }
            JSONArray mjson= JSONArray.fromObject(movies);
            return mjson;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        }finally {
            try{
                if(rs!=null) rs.close();
                if(pstmt!=null) pstmt.close();
                if(conn!=null) conn.close();

            }catch(SQLException e){
                e.printStackTrace();
            }
        }

    }

    //查询指类型定的前十
    public JSONArray queryTenByType(String type){
        List<mRating>movies= new ArrayList<>();
        mRating m=null;
        Connection conn=null;
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver" );
            conn= DriverManager.getConnection(url,user,password);
            String sql="select* from movier where fGenres like? order by rating desc limit 6";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,"%"+type+"%");
            rs=pstmt.executeQuery();
            while(rs.next()){
                String fId=rs.getString("fId");
                String fTitle=rs.getString("fTitle");
                String fGenres=rs.getString("fGenres");
                Double rating=rs.getDouble("rating");
                m= new mRating(fId,fTitle,fGenres,rating);
                movies.add(m);
            }
            JSONArray mjson= JSONArray.fromObject(movies);
            return mjson;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }finally {
            try{
                if(rs!=null) rs.close();
                if(pstmt!=null) pstmt.close();
                if(conn!=null) conn.close();

            }catch(SQLException e){
                e.printStackTrace();
            }
        }

    }

    //查询指类型定的前十
    public JSONArray queryAllByType(String type){
        List<mRating>movies= new ArrayList<>();
        mRating m=null;
        Connection conn=null;
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver" );
            conn= DriverManager.getConnection(url,user,password);
            String sql="select* from movier where fGenres like? ";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,"%"+type+"%");
            rs=pstmt.executeQuery();
            while(rs.next()){
                String fId=rs.getString("fId");
                String fTitle=rs.getString("fTitle");
                String fGenres=rs.getString("fGenres");
                Double rating=rs.getDouble("rating");
                m= new mRating(fId,fTitle,fGenres,rating);
                movies.add(m);
            }
            JSONArray mjson= JSONArray.fromObject(movies);
            return mjson;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }finally {
            try{
                if(rs!=null) rs.close();
                if(pstmt!=null) pstmt.close();
                if(conn!=null) conn.close();

            }catch(SQLException e){
                e.printStackTrace();
            }
        }

    }
    //分📃页代码
    public JSONArray findByPage(int page){
        List<movie>movies=new ArrayList<movie>();
        movie m=null;
        Connection conn=null;
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        conn=new MysqlConnect().getConnection();
        try{
            String sql="select* from Movie limit ?,?";
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1,(page-1)*10);
            pstmt.setInt(2,10);
            rs=pstmt.executeQuery();
            while(rs.next()){
                m=new movie(rs.getString(1),rs.getString(2),rs.getString(3));
                movies.add(m);

            }
            JSONArray mjson= JSONArray.fromObject(movies);
            System.out.println(mjson);
            return mjson;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        }finally {
            try{
                if(rs!=null) rs.close();
                if(pstmt!=null) pstmt.close();
                if(conn!=null) conn.close();

            }catch(SQLException e){
                e.printStackTrace();
            }
        }
    }

    //每种类型查九个
    public List queryNineByType(String type){
        List<movie>movies=new ArrayList<movie>();
        List<String>names=new ArrayList<>();
        movie m=null;
        Connection conn=null;
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        conn=new MysqlConnect().getConnection();
        try{
            String sql="select * from Movie where fGenres like ? limit 20";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,"%"+type+"%");
            rs=pstmt.executeQuery();
            while(rs.next()){
                names.add(rs.getString("fTitle"));
                m=new movie(rs.getString(1),rs.getString(2),rs.getString(3));
                movies.add(m);
            }
            //JSONArray mjson= JSONArray.fromObject(movies);
            return names;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return null;
        }finally {
            try{
                if(rs!=null) rs.close();
                if(pstmt!=null) pstmt.close();
                if(conn!=null) conn.close();

            }catch(SQLException e){
                e.printStackTrace();
            }
        }
    }
}
