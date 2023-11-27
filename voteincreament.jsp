<%-- 
    Document   : voteincreament
    Created on : 21-Sept-2023, 11:13:37 pm
    Author     : venkadesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vote Count</title>
    </head>
    <body>
        <%
       String c= request.getParameter("a");
       String d= (String)session.getAttribute("vn");
       try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venkadesh?zeroDateTimeBehavior=CONVERT_TO_NULL","venkadesh","Arun007.");
                Statement st=con.createStatement();
                int x=st.executeUpdate("update can set VoteCount=VoteCount+1 where can_id='"+c+"';");
                int y=st.executeUpdate("update signup set status='1' where name='"+d+"';");
                %>
                <jsp:forward page="pic.jsp"/>
                <%
            }
         catch(Exception e)
            {
out.println("error");
            }
       %>

    </body>
</html>
