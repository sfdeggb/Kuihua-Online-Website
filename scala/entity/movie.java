package scala.entity;

import java.io.Serializable;

public class movie implements Serializable {
    private static final long serialVersionUID = 4839314990722888634L;
    private String movieId=null;
    private String fGenres=null;
    private String fTitle=null;

    public movie(String movieId, String fTitle, String fGenres) {
        this.movieId = movieId;
        this.fTitle = fTitle;
        this.fGenres = fGenres;
    }
    public movie(){}


    public String getMovieId() {
        return movieId;
    }

    public void setMovieId(String movieId) {
        this.movieId = movieId;
    }

    public String getfGenres() {
        return fGenres;
    }

    public void setfGenres(String fGenres) {
        this.fGenres = fGenres;
    }

    public String getfTitle() {
        return fTitle;
    }

    public void setfTitle(String fTitle) {
        this.fTitle = fTitle;
    }

    @Override
    public String toString() {
        return "movie{" +
                "movieId='" + movieId + '\'' +
                ", fTitle='" + fTitle + '\'' +
                ", fGenres='" + fGenres + '\'' +
                '}';
    }
}
