package scala.register;

import scala.DB.Do_SQL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


//用户注册操作
@WebServlet("/register_account_add")
public class register_account_add extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Do_SQL do_sql=new Do_SQL();
        response.setContentType("text/html;charset=utf-8");
        String account = request.getParameter("account");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String sql = "insert into user (userName,account,password) values (?,?,?)";
        Object[] obj={username,account,password};
        int a= do_sql.modifyDate(sql,obj);
        System.out.println(a);
    }
}
