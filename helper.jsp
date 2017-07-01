<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FOOD RECIPE</title>
    </head>
    <body>
        <%   
            String middle=(String)session.getAttribute("user_name_in_session");
            if(middle!=null)
              {
                 String file_name=request.getParameter("v");
                 switch(file_name)
                 {
                      case "hyderabadi_biryani.html":
        %>
                 <jsp:include page="hyderabadi_biryani.html"/>
        <%           
                      break;
                      case "keema_biryani.html" :                       
        %>
                 <jsp:include page="keema_biryani.html" />

        <%    
                      break;
                      case "kakori_kebabs.html" :                       
        %>
                 <jsp:include page="kakori_kebabs.html"/>

        <%    
                      break;
                      case "stir_fried_chilli_chicken.html" :                       
        %>
                 <jsp:include page="stir_fried_chilli_chicken.html"/>

        <%    
                      break;
                      case "microwave_paneer_tikkas.html" :                       
        %>
                 <jsp:include page="microwave_paneer_tikkas.html"/>
         
        <%    
                      break;
                      case "aloo_and_dal_ki_tikki.html" :                       
        %>
                 <jsp:include page="aloo_and_dal_ki_tikki.html"/>

        <%    
                      break;
                      case "cheese_balls.html" :                       
        %>
                 <jsp:include page="cheese_balls.html"/>

        <%    
                      break;
                      case "chicken_satay.html" :                       
        %>
                 <jsp:include page="chicken_satay.html"/>

        <%    
                      break;
                      case "bhuna_masala_chicken_wings.html" :                       
        %>
                 <jsp:include page="bhuna_masala_chicken_wings.html"/>

        <%    
                      break;
                      case "tangri_kebabs.html" :                       
        %>
                 <jsp:include page="tangri_kebabs.html"/>

        <%    
                      break;
                      case "hot_basil_chicken_cups.html" :                       
        %>
                 <jsp:include page="hot_basil_chicken_cups.html"/>

        <%  
                      break;  
                      case "crumb_fried_chicken.html" :                       
        %>
                 <jsp:include page="crumb_fried_chicken.html"/>
   
        <%  
                      break;  
                      case "strawberry_mascarpone_shake.html" :                       
        %>
                 <jsp:include page="strawberry_mascarpone_shake.html"/>
      
        <%  
                      break;  
                      case "coffee_cabinets.html" :                       
        %>
                 <jsp:include page="coffee_cabinets.html"/>
        
        <%  
                      break;  
                      case "amaretto_joy_milkshake.html" :                       
        %>
                 <jsp:include page="amaretto_joy_milkshake.html"/>

        <%  
                      break;  
                      case "snickers_milkshake.html" :                       
        %>
                 <jsp:include page="snickers_milkshake.html"/>

        <%  
                      break;  
                      case "peanut_butter.html" :                       
        %>
                 <jsp:include page="peanut_butter.html"/>

        <%  
                      break;  
                      case "raspberry_ginger.html" :                       
        %>
                 <jsp:include page="raspberry_ginger.html"/>
 
        <%  
                      break;  
                      case "boozy_blueberry.html" :                       
        %>
                 <jsp:include page="boozy_blueberry.html"/>

        <%  
                      break;  
                      case "spiked_thin_mint_milkshake.html" :                       
        %>
                 <jsp:include page="spiked_thin_mint_milkshake.html"/>

        <%  
                      break;  
                      case "spiked_tagalong_milkshake.html" :                       
        %>
                 <jsp:include page="spiked_tagalong_milkshake.html"/>




        <%       break; 
                   }
                 }
              else{
                     response.sendRedirect("index.html");
                  }
         %> 
    </body>
</html>
