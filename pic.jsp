<%-- 
    Document   : pic
    Created on : 14-Sept-2023, 10:52:41 am
    Author     : venkadesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="pic.css">
</head>
<body>
    <header class="h">
        <nav class="m">
            <h3> <a href="voter.jsp">GO BACK</a></h3>
        </nav>
    </header>
    <img src="record.jpeg">
    <div class="k">
        <marquee>
            <span><b><%=session.getAttribute("vn")%></b></span>,You have successfully voted&#x2705;
        </marquee>
    </div>
</body>
</html>