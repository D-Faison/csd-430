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
            boolean success = bean.deleteMovieByID(idToDelete);
            
            if(success){
                statusMessage = "Movide with ID:" + idToDelete +" deleted successfully.";
            }else{
    
                statusMessage = "No Movie found with ID:" + idToDelete;
            }
    
        }catch(Exception e){
            statusMessage = "Error Deleting Record: " + e.getMessage();
        }
    
    }
    
    //Get IDs
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