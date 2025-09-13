<%--DeJanae Faison M7 Assignment--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "dbBeans.DBbean" %>
<%
    // Grab form parameters
    String title = request.getParameter("movieTitleInput");
    int year = Integer.parseInt(request.getParameter("movieYearInput"));
    String runtime = request.getParameter("movieRunTimeInput");
    String director = request.getParameter("movieDirectorInput");
    double rating = Double.parseDouble(request.getParameter("movieRatingInput"));
    String genre = request.getParameter("movieGenreInput");

    // Create bean
    DBbean movieBean = new DBbean();

    // Insert movie and get the generated ID
    int newId = movieBean.addUserMovie(title, year, runtime, director, rating, genre);

    // Fetch the new movie record back
    DBbean movie = movieBean.getMovieByID(newId);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>&#9630; Movie Finder &#9626;</title>
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
            <h2>Find your next favorite movie!</h2>
            <h3>Movie Details</h3>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Movie Title</th>
                        <th>Release Year</th>
                        <th>Run Time</th>
                        <th>Director</th>
                        <th>Rating</th>
                        <th>Genre</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <!-- Run function to get movie info -->
                        <td><%=movie.getID()%></td>
                        <td><%=movie.getMovieTitle()%></td>
                        <td><%=movie.getReleaseYear()%></td>
                        <td><%=movie.getRunTime()%></td>
                        <td><%=movie.getDirector()%></td>
                        <td><%=movie.getRating()%></td>
                        <td><%=movie.getGenre()%></td>
                    </tr>
                </tbody>
            </table>
            <br>
            <a href="index.jsp" id="backButton">Back to Search</a>
        </div>
    </body>
</html>