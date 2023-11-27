<%-- 
    Document   : navw
    Created on : 12-Sept-2023, 8:51:19 pm
    Author     : venkadesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voting System</title>
    <link rel="stylesheet" href="navw.css">
</head>

<body>
     <%session.setAttribute("p",0);%>
    <%session.setAttribute("Count",0);%>
    <header class="h">
        <nav class="n">
            <a href="navw.jsp">Home</a>
            <a href="voter.jsp">Voter Login</a>
            <a href="admin.jsp">Admin Login</a>
        </nav>
    </header>
    <div class="pic">
        <img src="flag_vote.jpeg" height="100%"; width="100%";>
    </div>
<marquee>
    ONLINE VOTING MANAGEMENT SYSTEM
</marquee>
    
</body>
</html>