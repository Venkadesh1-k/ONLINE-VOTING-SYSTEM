<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
   
    <link rel="stylesheet" href="signup.css">
</head>
<body>
    <header class="h">
        <nav class="n">
            <h3> <a href="votertable.jsp">GO BACK</a></h3>
        </nav>
    </header>
    <div class="c">
        <div class="l">
            <form action="SignUpServlet.jsp" method="post">
                <h1>Voter Registration</h1>
                <div class="in">
                    <input type="text" placeholder="Enter Name" name="name" required>
                </div>
                <div class="n">
                    <input type="number" placeholder="Enter Age" name='age' required min="18" max="100">
                </div>
                <div class="in">
                    <select name="gender" required>
                        <option value="Gender" style="background-color: black " hidden="">Enter Gender</option>
                        <option value="male" style="background-color: black">Male</option>
                        <option value="female" style="background-color: black">Female</option>
                        <option value="other" style="background-color: black">other</option>
                    </select>
                    </div>
                <div class="in">
                    <input type="text" placeholder="Enter Mobile Number" name="phone" pattern="[0-9]{10}" required />
                </div>
                <div class="in">
                    
                    <input type="text" placeholder="Enter VoterID"  name="voter_id" required></div>
                <div class="in">
                    
                    <input type="password" placeholder="Enter PassWord" name="password" required ></div>
                    
                    <button >SIGN UP</button>
            </form>
        </div>
    </div>
    
</body>
</html>