<%-- 
    Document   : candelete
    Created on : 22-Sept-2023, 11:03:33 pm
    Author     : venkadesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Candidate Delete</title>
    </head>
    <body>
         <%
       String name = request.getParameter("a");
       try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venkadesh?zeroDateTimeBehavior=CONVERT_TO_NULL","venkadesh","Arun007.");
                Statement st=con.createStatement();
                int x=st.executeUpdate("delete from can where can_id='"+name+"';");
                if(x>0)
                {%>
                     <jsp:forward page="cantable.jsp"/>
               <% }
                
        }
         catch(Exception e)
            {
            }
       %>

    </body>
</html>
