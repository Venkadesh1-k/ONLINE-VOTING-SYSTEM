<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voter Login</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
        .inv
        {
            position:absolute;
            right:41%;
            bottom:25%;
        }
    </style>
    <link rel="stylesheet" href="voter.css">
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
            <form method="post">
                <h1>VOTER LOGIN</h1>
                
                <div class="in">
                    <div class="icon">
                    <i class='bx bx-user-circle'></i></div>
                    <input type="text" placeholder="VoterID" name="voter_id" required></div>
                <div class="in">
                    <div class="icon"> <i class='bx bx-lock-alt'></i></div>
                    <input type="password" placeholder="PassWord" name="password" required ></div>
                    
                    <button type="submit">Login</button>
                </form>
            </div>
        </div>
        <%
            if (request.getMethod().equalsIgnoreCase("post")) {
                String voterID = request.getParameter("voter_id");
                String password = request.getParameter("password");

                Connection conn = null;
                PreparedStatement stmt = null;
                ResultSet rs = null;

                try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/venkadesh", "venkadesh", "Arun007.");

                    
                    String sql = "SELECT * FROM signup WHERE voter_id=? and password=?";
                    stmt = conn.prepareStatement(sql);
                    
                    stmt.setString(1, voterID);
                    stmt.setString(2, password);
                    rs = stmt.executeQuery();

                    if (rs.next()) {
                    Integer n=(Integer)session.getAttribute("Count");
                    String u=rs.getString("name");
                    session.setAttribute("vn",u);
                    if(n==0)
                    {
           
                    
                       
                        %>
                        <jsp:forward page="details.jsp"/>
                        <%
                            }
else
{
%>
                        <jsp:forward page="details.jsp"/>
                        <%
}
                        
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
