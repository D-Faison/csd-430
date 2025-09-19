<!-- DeJanae Faison M8- Select Movie to Update -->
<%@page import = "dbBeans.DBbean" %>
<%@page import = "java.util.ArrayList"%>
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
            <h2>Update a movie</h2>
            <!-Movie Update selection-->
            <form action="updateForm.jsp" method="post">
                <label for="movieID">Select a movie to update: </label>
                <select name="movieID" id="movieID">
                    <%
                        DBbean movieBean = new DBbean();
                        ArrayList<Integer> ids = movieBean.fetchAllIDs();
                        for(Integer id:ids){
                    %>
                    <option value="<%=id%>"><%=id%></option>
                    <%}%>
                </select>
                <input type="submit" value="Update">
            </form>
            <br>
            <a href="index.jsp" id="backButton">Back to Search</a>
        </div>
    </body>
</html>
