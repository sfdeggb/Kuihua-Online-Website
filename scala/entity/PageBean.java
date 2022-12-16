package scala.entity;
import java.util.ArrayList;
import scala.entity.movie;

public class PageBean {
    private int currentPage=1;
    private int totalCount;
    private int pageCount=10;
    private int totalPage;
    private ArrayList<movie>movies;

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public int getTotalPage() {
        if(totalCount%pageCount==0){
            totalPage=totalCount/pageCount;
        }else{
            totalPage=totalCount/pageCount+1;
        }
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public ArrayList<movie> getMovies() {
        return movies;
    }

    public void setMovies(ArrayList<movie> movies) {
        this.movies = movies;
    }
}

