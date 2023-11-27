<%-- 
    Document   : publish
    Created on : 24-Sept-2023, 11:58:00 pm
    Author     : venkadesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results</title>
    </head>
    <body>
        <%
       
       try
            {
                session.setAttribute("p",1);
                
                %>
                <jsp:forward page="winner.jsp"/>
                
<%}
            
         catch(Exception e)
            {
out.println("error");
            }
       %>

    </body>
</html>

