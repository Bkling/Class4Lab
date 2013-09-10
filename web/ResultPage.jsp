<%-- 
    Document   : ResultPage
    Created on : Sep 8, 2013, 6:47:37 PM
    Author     : benja_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
    </head>
    <body>
        <%
            String result = (String)request.getAttribute("Area");
        %>
        
        <p>Your Answer is: <% out.print(result); %></p>
        
        <p><a href="index.html">Back To Index Page</a></p>
    </body>
</html>
