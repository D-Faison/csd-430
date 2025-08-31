
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet"  href="faison3style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class = "formbody">
            <h1>Thank you for your application!</h1><br>
            <h4>Submitted Application: </h4>
            
            <jsp:useBean id ="jobApplication" class="beans.applicationBean" scope="request" />
            <jsp:setProperty name = "jobApplication" property="firstName" param="firstName"/>
            <jsp:setProperty name = "jobApplication" property="lastName" param="lastName"/>
            <jsp:setProperty name = "jobApplication" property="desiredPosition" param="desiredPosition"/>
            <jsp:setProperty name = "jobApplication" property="lastName" param="lastName"/>
            <jsp:setProperty name = "jobApplication" property="phoneNumber" param="phoneNumber"/>
            <jsp:setProperty name = "jobApplication" property="website" param="website"/>
            <!-- Display content in a table -->
            <table>
                <tr>
                    <th>Field</th>
                    <th>Submission</th>
                </tr>
                <tr>
                    <td>First Name:</td>
                    <td><%= jobApplication.getFirstName()%></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><%= jobApplication.getLastName()%></td>
                </tr>
                <tr>
                    <td>Desired Position: </td>
                    <td><%= jobApplication.getDesiredPosition()%></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><%= jobApplication.getEmail()%></td>
                </tr>
                <tr>
                    <td>Phone: </td>
                    <td><%= jobApplication.getPhoneNumber()%></td>
                </tr>
                <tr>
                    <td>Website :</td>
                    <td><%= jobApplication.getWebsite()%></td>
                </tr>
            </table>
        </div>
    </body>
</html>
