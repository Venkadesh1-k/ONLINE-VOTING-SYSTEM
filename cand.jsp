<%-- 
    Document   : cand
    Created on : 12-Sept-2023, 8:48:42 pm
    Author     : venkadesh
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.io.*, java.util.*, org.apache.commons.fileupload.*, org.apache.commons.fileupload.servlet.*, org.apache.commons.fileupload.disk.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Candidate SignUp</title>
   
    <link rel="stylesheet" href="cand.css">
</head>
<body>
    <header class="h">
        <nav class="n">
            <a href="cantable.jsp">Go Back</a>
            
        </nav>
    </header>
    <div class="c">
        <div class="l">
            <form action="candServlet.jsp" method="post" >

                <h1>Add Candidate</h1>
                <div class="in">
                    <input type="text" placeholder="Candidate Name" name="name" required>
                </div>
                <div class="n">
                    <input type="number" placeholder="Age" name="age" required min="18" max="100">
                </div>
                <div class="in">
                    <select name="gender" required>
                        <option value="" disabled selected hidden>Gender</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                    </select>
                    </div>
                <div class="in">
                    <input type="text" placeholder="Candidate Id" name="can_id" required>
                </div>
                <div class="in">
                    <input type="text" placeholder="Party Name" name="party" required></div>
               
                    <button>ADD</button>
            </form>
        </div>
    </div>
</body>
</html>