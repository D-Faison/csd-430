<!-- DeJanae Faison M9- Display Deleted Movie -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "dbBeans.DBbean" %>
<%
    String deleteId = request.getParameter("deleteID");
    DBbean bean = new DBbean();
    DBbean deletedMovie = null;
    
    if (deleteId != null) {
        try {
            int idToDelete = Integer.parseInt(deleteId);
            //deletedMovie = bean.deleteMovieByID(idToDelete);
        } catch (Exception e) {
            out.println("<p style='color:red;'>Error deleting record.</p>");
        }
    }
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
            <h2>Deleted Movie:</h2>
            
            
            
            <h3>Remaining Movies:</h3>

            <a href="index.jsp" class="purpleButton" id="backButton">Back to Search</a>
            <a href="deleteSelect.jsp" class="purpleButton">Delete Another Entry</a>
        </div>
    </body>
</html>
