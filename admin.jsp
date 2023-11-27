<%-- 
    Document   : admin
    Created on : 12-Sept-2023, 8:46:48 pm
    Author     : venkadesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="admin.css">
     <style>
        .inv
        {
            position:absolute;
            right:41%;
            bottom:25%;
        }
    </style>
</head>
<body>
    <header class="h">
        <nav class="n">
            <a href="navw.jsp">Home</a>
            <a href="voter.jsp">Voter Login</a>
            <a href="admin.jsp">Admin Login</a>
        </nav>
    </header>
    <div class="c">
        <div class="l">
            <form action page="home.jsp" method="post">
                <h1>ADMIN LOGIN</h1>
                <div class="in">
                    <div class="icon">
                    <i class='bx bx-user-circle'></i></div>
                    <input type="text" placeholder="UserName" name="name" required></div>
                <div class="in">
                    <div class="icon"> <i class='bx bx-lock-alt'></i></div>
                    <input type="password" placeholder="PassWord" name="password" required ></div>
                    
                    <button>Login</button>                
            </form>
        </div>
    </div>
  
<%
            if (request.getMethod().equalsIgnoreCase("post")) {
                String name = request.getParameter("name");
                String password = request.getParameter("password");
                Class.forName("com.mysql.cj.jdbc.Driver");

                
                Connection conn = null;
                PreparedStatement stmt = null;
                ResultSet rs = null;

                try {
                
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/venkadesh?zeroDateTimeBehavior=CONVERT_TO_NULL", "venkadesh", "Arun007.");
                    String sql = "SELECT 1 FROM admin WHERE name=? and password=?";
                    stmt = conn.prepareStatement(sql);
                    stmt.setString(1, name);
                    stmt.setString(2, password);
                    rs = stmt.executeQuery();

                    if (rs.next()) {
                        
                        %>
                        <jsp:forward page="home.jsp"/>
                        <%
                        
                    } else {
                        
                    %>
                    <div class="inv">
                        <p style="color: red;"><b>Login failed. Password is incorrect.</b></p>
                    </div>
                    <%
                    }
                } catch (SQLException e) {
                    out.println("Database error: " + e.getMessage());
                    e.printStackTrace();
                } finally {
                    try {
                        if (rs != null) {
                            rs.close();
                        }
                        if (stmt != null) {
                            stmt.close();
                        }
                        if (conn != null) {
                            conn.close();
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        %>
</body>
</html>
