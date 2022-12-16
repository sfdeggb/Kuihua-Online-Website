package scala.typeSearch;

import net.sf.json.JSONArray;
import scala.DB.MovieDao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/typeSearch")
public class typeSearch extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        String type = request.getParameter("type");
        if (!type.equals("")) {
            JSONArray list= new MovieDao().queryAllByType(type);
            PrintWriter outer = response.getWriter();
            outer.print(list);
            outer.flush();
            outer.close();

        }else{
            System.out.println("没找到！！");
        }
    }
}

