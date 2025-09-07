
package dbBeans;

import java.sql.*;
import java.util.ArrayList;

//Bean
public class DBbean implements java.io.Serializable {
    //Establish setters and getters for movies
    private int id;
    private String movieTitle;
    private int releaseYear;
    private String runTime;
    private String director;
    private double rating;
    private String genre;
    //Connection Variables
    private final String url ="jdbc:mysql://localhost:3306/CSD340";
    private final String user = "student1";
    private final String password = "pass";
    
    //ID
    public int getID(){
        return id;
    }
    public void setID(int id){
        this.id = id;
    }
    //Movie Title
    public String getMovieTitle(){
        return movieTitle;
    }
    public void setMovieTitle(String movieTitle){
        this.movieTitle = movieTitle;
    }
    //Release Year
    public int getReleaseYear(){
        return releaseYear;
    }
    public void setReleaseYear(int releaseYear){
        this.releaseYear = releaseYear;
    }
    //Run Time
    public String getRunTime(){
        return runTime;
    }
    public void setRunTime(String runTime){
        this.runTime = runTime;
    }
    //Director
    public String getDirector(){
        return director;
    }
    public void setDirector(String director){
        this.director = director;
    }
    //Rating
    public double getRating(){
        return rating;
    }
    public void setRating(double rating){
        this.rating = rating;
    }
    //Genre
    public String getGenre(){
        return genre;
    }
    public void setGenre(String genre){
        this.genre = genre;
    }

 //Create a list of all the IDs within the DB
public ArrayList<Integer> fetchAllIDs() {
    ArrayList<Integer> movieIDs = new ArrayList<>();
    try {
        // Ensure driver is loaded
        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection conn = DriverManager.getConnection(url, user, password);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT id FROM dejanae_movies_data")) {

            while (rs.next()) {
                int id = rs.getInt("id");
                System.out.println("Fetched ID: " + id); // Debugging
                movieIDs.add(id);
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
        System.out.println("Error fetching table");
    }
    return movieIDs;
}

    //Get movie info by their id
    public DBbean getMovieByID(int id){
        DBbean movie = null;
        try( Connection conn = DriverManager.getConnection(url,user,password);
            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM dejanae_movies_data WHERE ID = ?") ){
           pstmt.setInt(1, id);
           try(ResultSet rs = pstmt.executeQuery()){
               if(rs.next()){
                   movie = new DBbean();
                   movie.setID(rs.getInt("ID"));
                   movie.setMovieTitle(rs.getString("MovieTitle"));
                   movie.setReleaseYear(rs.getInt("ReleaseYear"));
                   movie.setRunTime(rs.getString("RunTime"));
                   movie.setDirector(rs.getString("Director"));
                   movie.setRating(rs.getDouble("Rating"));
                   movie.setGenre(rs.getString("Genre"));
               }
           
           }
        
        }catch(Exception e){
            e.printStackTrace();
            System.out.print("Error fetching ID");
        }
        return movie;
    }
    
}
