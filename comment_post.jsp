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
              String comment_text_field=request.getParameter("comment_textfield");
              String comment_text_area=request.getParameter("comment_textarea");
              String base=request.getParameter("hidden_field");
        %>
        <%
              try{
              Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/funda_database","root","raju@4321");
              PreparedStatement ps=con.prepareStatement("update user_details set comment=? where user_name=\""+comment_text_field+"\"");
              ps.setString(1,comment_text_area);
              int count = ps.executeUpdate();
              if(count>0){
                  
         %>
                <jsp:include page="<%=base%>"/>
                <script type="text/javascript">
                       window.alert("Thanks for your comment...\nEnjoy the experience...");
                </script>
         <%
                          
                         }
              else{ 

         %>
                <jsp:include page="hyderabadi_biryani.html" />
                <script type="text/javascript">
                       window.alert("Invalid username...\nPlease check the username and try to comment again...");
                </script>
         <%
                   
                      }
              }
              catch(Exception e)
              {
          %>
                       <jsp:include page="hyderabadi_biryani.html" />
                       <script type="text/javascript">
                       window.alert("Invalid username...\nPlease check the username and try to comment again...");
                       </script>
         <%                  
              }
          %>
      
    </body>
</html>
