<!-- DeJanae Faison M9- Select Movie to Delete -->
<%@page import = "dbBeans.DBbean" %>
<%@page import = "java.util.ArrayList"%>
<%
    DBbean bean = new DBbean();
    String statusMessage = null;
    
    //Handle Delete action
    //If there is an ID delete it and if not, share message
    //Get id
    String deleteId = request.getParameter("deleteID");
    if(deleteId != null){
        try{
        
            int idToDelete = Integer.parseInt(deleteId);
    
        }catch(Exception e){
            statusMessage = "Error Deleting Record: " + e.getMessage();
        }
    
    }
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
            <form action="updateForm.jsp" method="post">
                <label for="movieID">Select a movie to update: </label>
                <select name="movieID" id="movieID">
                    <!-- Just like the search, iterate through the ids for an option -->
                    <%
                        DBbean movieBean = new DBbean();
                        ArrayList<Integer> ids = movieBean.fetchAllIDs();
                        for(Integer id:ids){
                    %>
                    <option value="<%=id%>"><%=id%></option>
                    <%}%>
                </select>
                <input type="submit" value="Update" class="purpleButton" id="updateSelect">
            </form>
            <br>
            <a href="index.jsp" class="purpleButton" id="backButton">Back to Search</a>
        </div>
    </body>
</html>