<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dbBeans.DBbean" %>
<%
    int id = Integer.parseInt(request.getParameter("movieID"));
    String title = request.getParameter("title");
    int year = Integer.parseInt(request.getParameter("year"));
    String runTime = request.getParameter("runTime");
    String director = request.getParameter("director");
    double rating = Double.parseDouble(request.getParameter("rating"));
    String genre = request.getParameter("genre");

    DBbean movieBean = new DBbean();
    boolean updated = movieBean.updateMovie(id, title, year, runTime, director, rating, genre);

    DBbean movie = movieBean.getMovieByID(id);
%>
<!DOCTYPE html>
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
            <h2>Updated Movie</h2>
            <%if (updated){ %>
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
            <% } else { %>
                <p>Error updating movie.</p>
            <% } %>
            <br>
            <a href="index.jsp" id="backButton">Back to Search</a>
        </div>
    </body>
</html>
