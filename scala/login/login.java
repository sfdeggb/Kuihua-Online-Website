package scala.login;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import scala.DB.Do_SQL;

//买家登录商城的操作
@WebServlet("/loginServe")
public class login extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Do_SQL do_sql=new Do_SQL();
        response.setContentType("text/html;charset=utf-8");
//        int flag = 2;
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        String sql = "select userName from user where account=? and password=?";
        Object[] obj={account,password};
        System.out.println(account+"::::"+password);
        if (!account.equals("")) {
            ResultSet rs = do_sql.getDate(sql, obj);
            PrintWriter outer = response.getWriter();
            try {
                int count=0;
                while (rs.next()){
                    count+=1;
                    String acc= rs.getString(1);
                    System.out.println(acc);
                }
                if (count != 0) {
                    outer.write("1");
                }
                else {
                    outer.write("0");
                }
                outer.flush();
                outer.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }

        }
    }
}