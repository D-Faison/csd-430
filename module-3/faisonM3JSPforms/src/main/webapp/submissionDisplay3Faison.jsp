<%-- 
    DeJanae Faison
    Display Submission
--%>

<%@page language= "java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Submission Received </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="faison3style.css">
    </head>
    <body>
        <div class = "formbody">
           <h1>Thank you for your application!</h1><br>
           <h4>Submitted Application: </h4>
        
           <!-- Retrieving data from the submission -->
         <% 
            //Data Variables
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String desiredPosition = request.getParameter("position");
            String email = request.getParameter("email");
            String phoneNumber = request.getParameter("phoneNumber");
            String website = request.getParameter("website");
         %>
        
         <!-- Post submitted data in table format -->
         
         <table border ="2" cellpadding ="8" cellspacing = "0" class="tablebox">
             <tr>
                 <th>Field</th>
                 <th>Submission</th>
             </tr>
             <tr>
                 <td>First Name</td>
                 <td> <%= firstName %></td>
             </tr>
             <tr>
                 <td>Last Name:</td>
                 <td><%= lastName %></td>
             </tr> 
             <tr>
                 <td>Desired Position:</td>
                 <td> <%= desiredPosition %></td>
             </tr>
             <tr>
                 <td>Email:</td>
                 <td><%= email %></td>
             </tr>
             <tr>
                 <td>Phone Number:</td>
                 <td> <%= phoneNumber %></td>
             </tr>
             <tr>
                 <td>Website, Blog or Portfolio:</td>
                 <td><%= website %></td>
             </tr>
         </table>
            
        </div>

    </body>
</html>
