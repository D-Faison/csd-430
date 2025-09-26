
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
    } catch (ClassNotFoundException | SQLException e) {
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
            System.out.print("Error fetching ID");
        }
        return movie;
    }
    //Insert User Movie into DB
    @SuppressWarnings("CallToPrintStackTrace")
    public int addUserMovie(String title, int year,String runTime, 
            String director, double rating, String genre){
        String insertStatement = "INSERT INTO dejanae_movies_data(MovieTitle,ReleaseYear,RunTime,Director,Rating,Genre)VALUES(?,?,?,?,?,?)";
        
        int newId = -1;
        //Connect to DB and send back key
        try(Connection conn = DriverManager.getConnection(url,user,password);
                PreparedStatement pstmt = conn.prepareStatement(insertStatement,Statement.RETURN_GENERATED_KEYS)){
        
            pstmt.setString(1, title);
            pstmt.setInt(2,year);
            pstmt.setString(3, runTime);
            pstmt.setString(4, director);
            pstmt.setDouble(5, rating);
            pstmt.setString(6, genre);
            int rowsAdded = pstmt.executeUpdate();
            //Returns true if a row was added
            if(rowsAdded > 0){
                try(ResultSet rs = pstmt.getGeneratedKeys()){
                    if(rs.next()){
                        newId = rs.getInt(1);
                    }
                }
            
            }
            
        }catch(Exception e){
            e.printStackTrace();
            System.out.print("Failure to add movie"+newId);
        }
        return newId;
    }
    
// Update an existing movie record in the DB
public boolean updateMovie(int id, String title, int year, String runTime,
                           String director, double rating, String genre) {
    String updateSQL = "UPDATE dejanae_movies_data " +
                       "SET MovieTitle = ?, ReleaseYear = ?, RunTime = ?, " +
                       "Director = ?, Rating = ?, Genre = ? " +
                       "WHERE ID = ?";

    boolean success = false;

    try (Connection conn = DriverManager.getConnection(url, user, password);
         PreparedStatement pstmt = conn.prepareStatement(updateSQL)) {

        // Set parameter values
        pstmt.setString(1, title);
        pstmt.setInt(2, year);
        pstmt.setString(3, runTime);
        pstmt.setString(4, director);
        pstmt.setDouble(5, rating);
        pstmt.setString(6, genre);
        pstmt.setInt(7, id);

        // Execute update
        int rowsUpdated = pstmt.executeUpdate();
        success = rowsUpdated > 0;

    } catch (Exception e) {
        System.out.println("Error updating movie with ID: " + id);
    }

    return success;
}

    //Delete Movie Entry
    @SuppressWarnings("CallToPrintStackTrace")
    public boolean deleteMovieByID(int id){
        String deleteSQL = "DELETE FROM dejanae_movies_data WHERE ID = ?";
        try(Connection conn = DriverManager.getConnection(url, user, password);
            PreparedStatement pstmt = conn.prepareStatement(deleteSQL)){
            
            pstmt.setInt(1, id);
            
            int rowsDeleted = pstmt.executeUpdate();
            return rowsDeleted > 0;
        
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    
    }

    
}
