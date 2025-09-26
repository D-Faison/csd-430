<!-- DeJanae Faison M9- Display Deleted Movie -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "dbBeans.DBbean, java.util.ArrayList" %>
<%
    String deleteId = request.getParameter("deleteID");
    DBbean bean = new DBbean();
    DBbean deletedMovie = null;
    
    if (deleteId != null) {
        try {
            int idToDelete = Integer.parseInt(deleteId);
            deletedMovie = bean.deleteMovieByID(idToDelete);
        } catch (Exception e) {
            out.println("<p style='color:red;'>Error deleting record.</p>");
        }
    }
    
    //Fetch all movies
    ArrayList<DBbean> movies = bean.fetchAllMovies();
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
            <!-- Display Deleted Movie -->
            <h2>Deleted Movie Successful:</h2>
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
                        <td> <%=deletedMovie.getID()%></td>
                        <td> <%=deletedMovie.getMovieTitle()%></td>
                        <td> <%=deletedMovie.getReleaseYear()%></td>
                        <td> <%=deletedMovie.getRunTime()%></td>
                        <td> <%=deletedMovie.getDirector()%></td>
                        <td> <%=deletedMovie.getRating()%></td>
                        <td> <%=deletedMovie.getGenre()%></td>
                    </tr>
                </tbody>
            </table>
            <!-- Display the Other movies -->
            <h2>Remaining Movies:</h2>
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
                    <%for (DBbean m : movies){%>
                    <tr>
                        <td><%=m.getID()%></td>
                        <td><%=m.getMovieTitle()%></td>
                        <td><%=m.getReleaseYear()%></td>
                        <td><%=m.getRunTime()%></td>
                        <td><%=m.getDirector()%></td>
                        <td><%=m.getRating()%></td>
                        <td><%=m.getGenre()%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
                
            <br>
            <a href="index.jsp" class="purpleButton" id="backButton">Back to Search</a>
            <a href="deleteSelect.jsp" class="purpleButton">Delete Another Entry</a>
            <br>
        </div>
    </body>
</html>
