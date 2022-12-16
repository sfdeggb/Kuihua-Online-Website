package scala.nameSearch;

import com.google.gson.Gson;
import net.sf.json.JSONArray;
//import scala.DB.MovieDao;
import scala.SparkRDD.EndWithRDD;
import scala.SparkRDD.FuzzyRDD;
import scala.SparkRDD.StartwithRDD;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/nameSearch")
public class nameS extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Do_SQL do_sql=new Do_SQL();
        response.setContentType("text/html;charset=utf-8");
        System.out.println("!!!!!!!!!!!!!!!!!");
        String name = request.getParameter("name");
        String method=request.getParameter("method");
        System.out.println(name+":::::"+method);
        PrintWriter outer = response.getWriter();
        if(method.equals("1")){
            //调用前匹配函数
            JSONArray list= new StartwithRDD().StartWithFilter(name);
            outer.print(list);
            outer.flush();
            outer.close();
        }
        if(method.equals("2")){
            //调用后匹配函数
            JSONArray list= EndWithRDD.EndWithFilter(name);
            System.out.println(list);
            outer.print(list);
            outer.flush();
            outer.close();
        }
        if(method.equals("3")){
            //调用模糊匹配函数
            JSONArray list= FuzzyRDD.FuzzyFilter(name);
            outer.print(list);
            outer.flush();
            outer.close();
        }
    }
}
