<%--DeJanae Faison M5&6 Assignment--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "dbBeans.DBbean" %>
<%@page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <title>&#9630; Movie Finder &#9626;</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Concert+One&display=swap');
        </style>
        <link rel="stylesheet" href="faison_5_6_style.css">
    </head>
    <body>
        <H1>Movie Finder</H1>
        <div class="movieInfoBody">
            <h2>Find your next favorite movie!</h2>
            <form action="movieDisplay.jsp" method="post">
                <label for="movieID">Select Movie to view details:</label>
                <select name="movieID" id="movieID">
                    <%
                        DBbean movieBean = new DBbean();
                        ArrayList<Integer> ids = movieBean.fetchAllIDs();
                        for(Integer id:ids){
                    %>
                    <<option value="<%=id%>"><%=id%></option>
                    <%}%>
                </select>
                <input type="submit" value="View Movie" id="viewMovieButton">
            </form>
        </div> 
    </body>
</html>
