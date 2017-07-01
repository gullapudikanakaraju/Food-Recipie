<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTRATION JSP</title>
        
    </head>
    <body>
        <%
              String username_field=request.getParameter("user_name_field");
              String password_field=request.getParameter("pass_word_field");
              String firstname_field=request.getParameter("first_name_field");
              String lastname_field=request.getParameter("last_name_field");
              String emailid_field=request.getParameter("email_id_field");
        %>
        <%
              try{
              Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/funda_database","root","raju@4321");
              PreparedStatement ps=con.prepareStatement("insert into user_details(first_name,last_name,user_name,pass_word,mail_id) values (?,?,?,?,?)");
              ps.setString(1,firstname_field);
              ps.setString(2,lastname_field);
              ps.setString(3,username_field);
              ps.setString(4,password_field);
              ps.setString(5,emailid_field);
              int count = ps.executeUpdate();
              session.setAttribute("user_name_in_session",username_field);
              
%>
   <jsp:include page="hyderabadi_biryani.html" />
   <script>
      alert("Registration successfull...\nEnjoy the experience");
   </script>
<%
              }
              catch(Exception e)
              {
%>
    <jsp:include page="register.html" />
    <script>
       window.alert("Registration unsuccessful...\nThere might be a user already with same username or email-id\nPlease try again by changing them");

    </script>
<%
                  
              }
        %>
      
    </body>
</html>
