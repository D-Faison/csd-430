<%--
DeJanae Faison
M2: Java Scriptlet Data Display
--%>


<%-- defining the page attributes--%>
<%@page language = "java" contentType="text/html; charset = UTF-8" pageEncoding="UTF-8"%>

<%
    /*Book Array Data*/
    String [][] favoriteBooks = {
        
        {"Fantastic Mr Fox","Roald Dahl","Fantasy","4/5"},
        {"The Hobbit","John  Tolkien","Fantasy","4/5"},
        {"The Outsider","Stephen King","Horror","4/5"},
        {"The Priority of the Orange Tree","Samantha Shannon","Fantasy","4/5"}
    };

%>
<%--HTML PORTION--%>
<!<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>==|Favorite Books|==</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <h1>Favorite Books</h1>
        <p>Table of my favorite books</p>
        
        <!--TABLE-->
        <table>
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Genre</th>
                    <th>Rating</th>
                </tr>
            </thead>
            <tbody>
                <!-- Fill table with data -->
                <!-- For each book populate the data  -->
                <%
                    for (int i = 0; i < favoriteBooks.length;i++){
                %>
                
                <tr>
                    <td><%= favoriteBooks[i][0]%></td>
                    <td><%= favoriteBooks[i][1]%></td>
                    <td><%= favoriteBooks[i][2]%></td>
                    <td><%= favoriteBooks[i][3]%></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </body>
</html>