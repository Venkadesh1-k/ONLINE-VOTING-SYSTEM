<%-- 
    Document   : candServlet
    Created on : 13-Sept-2023, 9:36:08 pm
    Author     : venkadesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Database</title>
    </head>
    <%
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age")); 
        String gender = request.getParameter("gender");
        String can_id = request.getParameter("can_id");
        String party = request.getParameter("party");
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        try
        {
           
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/venkadesh?zeroDateTimeBehavior=CONVERT_TO_NULL","venkadesh","Arun007.");
            Statement st = con.createStatement();
            int x = st.executeUpdate("insert into can (name,age,gender,can_id,party) values('"+name+"','"+age+"','"+gender+"','"+can_id+"','"+party+"')");
        }
        catch(Exception e)
        {
        out.println(e.getMessage());
        }
    %>
    <body>
    <jsp:forward page="cantable.jsp"/>
    
    </body>
</html>