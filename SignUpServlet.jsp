<%-- 
    Document   : SignUpServlet
    Created on : 02-Sept-2023, 2:14:03 pm
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
        String phone = request.getParameter("phone");
        String voter_id = request.getParameter("voter_id");
        String password = request.getParameter("password");
        Class.forName("com.mysql.cj.jdbc.Driver");
        try
        {
           
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/venkadesh?zeroDateTimeBehavior=CONVERT_TO_NULL","venkadesh","Arun007.");
            Statement st = con.createStatement();
            int x = st.executeUpdate("insert into signup (name,age,gender,phone,voter_id,password)values('"+name+"','"+age+"','"+gender+"','"+phone+"','"+voter_id+"','"+password+"')");
        }
        catch(Exception e)
        {
        out.println(e.getMessage());
        }
    %>
    <body>
    <jsp:forward page="votertable.jsp"/>
    
    </body>
</html>
