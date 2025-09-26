<!-- DeJanae Faison M9- Select Movie to Delete -->
<%@page import = "dbBeans.DBbean" %>
<%@page import = "java.util.ArrayList"%>
<%
    DBbean bean = new DBbean();
    ArrayList<Integer> ids = bean.fetchAllIDs();
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
            <h2>Delete a Movie</h2>
            <!-Movie Delete selection-->
            <form action="deleteDisplay.jsp" method="post">
                <label for="deleteID">Select a movie to Delete: </label>
                <select name="deleteID" id="deleteID">
                    <!-- Just like the search, iterate through the ids for an option -->
                    <%
                        for(Integer id : ids){
                            DBbean movie = bean.getMovieByID(id);
                            if( movie !=null){
                        
                    %>
                    <option value="<%=id%>"><%=id%></option>
                    <%
                            }
                        }
                    %>
                  
                </select>
                <input type="submit" value="Delete Movie" class="purpleButton" id="deleteSelect">
            </form>
            <br>
            <a href="index.jsp" class="purpleButton" id="backButton">Back to Search</a>
        </div>
    </body>
</html>