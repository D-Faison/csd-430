
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dbBeans.DBbean" %>
<%
    int movieID = Integer.parseInt(request.getParameter("movieID"));
    DBbean movieBean = new DBbean();
    DBbean movie = movieBean.getMovieByID(movieID);
%>
<!DOCTYPE html>
<html>
    <head>
        <title>&#9630; Movie Finder &#9626;</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--Font-->
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Concert+One&display=swap');
        </style>
        <link rel="stylesheet" href="faison_5_6_style.css">
    </head>
    <body>
      <H1>Movie Finder</H1>
        <div class="movieInfoBody">
            <h2>Update your selected movie:</h2>
            <form action="updateProcessed.jsp" method="post">
                <label>ID:</label>
                <input type="text" name="movieID" value="<%=movie.getID()%>" readonly><br>
                
                <label>Title</label>
                <input type="text" name="movieTitle" value="<%=movie.getMovieTitle()%>"><br>
                
                <label>Release Year:</label>
                <input type="number" name="movieReleaseYear" value="<%=movie.getReleaseYear()%>"><br>
                
                <label>Run Time:</label>
                <input type="text" name="movieRunTime" value="<%=movie.getRunTime()%>"><br>
                
                <label>Director:</label>
                <input type="text" name="movieDirector" value="<%=movie.getDirector()%>"><br>
                
                <label>Rating:</label>
                <input type="number" step="0.1" name="movieRating" value="<%=movie.getRating()%>"><br>
                
                <label>Genre:</label>
                <input type="text" name="movieGenre"<%=movie.getDirector()%>"><br>
                
                <input type="submit" value="Save Update">
            </form>
        </div>
    </body>
</html>
