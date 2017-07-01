<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN VERIFICATION</title>
    </head>
    <body>
        <% 
            String user_name_field=request.getParameter("user_name");
            String password_field=request.getParameter("password_field");
        %>
        <%
            try{
                int found=0;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/funda_database","root","raju@4321");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select pass_word from user_details where user_name=\""+user_name_field+"\"");
                while(rs.next())
                {
                    String pass_word_database=rs.getString("pass_word");
                    if(pass_word_database.equals(password_field))
                    {
                    	   System.out.println(pass_word_database);
                    	   System.out.println(password_field);
                           found=1;
                           session.setAttribute("user_name_in_session",user_name_field);
                           response.sendRedirect("helper.jsp?v=hyderabadi_biryani.html");
                           break;
                    }
                }
                   
                    
                    if(found==0)
                    {
%>
         <jsp:include page="index.html" />
         <script>
             alert("Invalid username or password...\nPlease  check and try  again...");
         </script>
<%
         
                     }
                 
               }
            catch(Exception e)
            {
                out.println(e);
            }
          %>
    </body>
</html>
