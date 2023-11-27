<%-- 
    Document   : voterdelete
    Created on : 24-Sept-2023, 7:25:54 pm
    Author     : venkadesh
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voter Delete</title>
    </head>
    <body>
         <%
       String name = request.getParameter("a");
       try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venkadesh?zeroDateTimeBehavior=CONVERT_TO_NULL","venkadesh","Arun007.");
                Statement st=con.createStatement();
                int x=st.executeUpdate("delete from signup where voter_id='"+name+"';");
                if(x>0)
                {%>
                     <jsp:forward page="votertable.jsp"/>
               <% }
                
        }
         catch(Exception e)
            {
            }
       %>

    </body>
</html>

