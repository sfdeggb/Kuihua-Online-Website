package scala.entity;

public class mRating {
    private String movieId;
    private String fTitle;
    private String fGenres;
    private Double rating;

    public mRating(String movieId,String fTitle,String fGenres,Double rating){
        this.movieId=movieId;
        this.fTitle=fTitle;
        this.fGenres=fGenres;
        this.rating=rating;
    }

    public mRating(){}

    public String getMovieId() {
        return movieId;
    }

    public void setMovieId(String movieId) {
        this.movieId = movieId;
    }

    public String getfTitle() {
        return fTitle;
    }

    public void setfTitle(String fTitle) {
        this.fTitle = fTitle;
    }

    public String getfGenres() {
        return fGenres;
    }

    public void setfGenres(String fGenres) {
        this.fGenres = fGenres;
    }

    public Double getRating() {
        return rating;
    }

    public void setRating(Double rating) {
        this.rating = rating;
    }
}
