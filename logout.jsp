<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOG OUT</title>
    </head>
    <body>
        <% 
             session.removeAttribute("user_name_in_session");
             session.invalidate();
             response.sendRedirect("index.html");
        %>
             
    </body>
</html>
