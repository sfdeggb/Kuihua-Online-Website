package scala.getAll;

import net.sf.json.JSONArray;
import scala.DB.MovieDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/getAll")
public class getAll extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String num = request.getParameter("num");
        System.out.println("111:"+num);
        response.setContentType("text/html;charset=utf-8");
        if (!num.equals("")) {
            int num1=Integer.parseInt(num);
            JSONArray list= new MovieDao().findByPage(num1);
            PrintWriter outer = response.getWriter();
//            System.out.println(list);
            outer.print(list);
            outer.flush();
            outer.close();

        }else{
            System.out.println("没找到！！");
        }
    }
}
