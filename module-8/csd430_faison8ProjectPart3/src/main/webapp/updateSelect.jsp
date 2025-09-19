<!-- DeJanae Faison M8- Select Movie to Update -->
<%@page import = "dbBeans.DBbean" %>
<%
    //For each instance of ID, run the query
    int movieID = Integer.parseInt(request.getParameter("movieID"));
    DBbean movieBean = new DBbean();
    ArrayList<Integer>ids = movieBean.getMovieByID(movieID);
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
            <h2>Select a movie to update:</h2>
            <!-Movie Update selection-->
            <form action="" method="post">
                <label for="movieID">Select Movie to view details:</label>
                <select name="movieID" id="movieID">
                    <%

                        for(Integer id:ids){
                    %>
                    <option value="<%=id%>"><%=id%></option>
                    <%}%>
                </select>
                <input type="submit" value="View Movie" id="viewMovieButton">
            </form>
            
        </div>
    </body>
</html>
