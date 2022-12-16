package scala.register;
import scala.DB.Do_SQL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

//用户注册时判断是否账号已有的测试
@WebServlet("/register_account_test")
public class register_account_test extends HttpServlet {
    //    @Override
//    public static String account;
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Do_SQL do_sql = new Do_SQL();
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf8");
        String account = request.getParameter("account");  //接收ajax传来的值
        if (!account.equals("")) {
            String sql = "select account from user where account=?";  //进行查询
            Object[] obj = {account};
            ResultSet rs = do_sql.getDate(sql, obj);
            System.out.println(account);
            try {
//                response.setContentType("text/json;charset=UTF-8");
                int count=0;
                while (rs.next()){
                    count+=1;
                    String acc= rs.getString(1);
                    System.out.println(acc);
                }
                response.setCharacterEncoding("UTF-8");
                PrintWriter outer = response.getWriter();
//                System.out.println(rs.getRow());
                if (count!= 0) {
                    outer.write("1");    //向ajax传递数据
                }
                else{
                    outer.write("0");
                }
                outer.flush();
                outer.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
//            outer.write(flag);

        }
    }
}
