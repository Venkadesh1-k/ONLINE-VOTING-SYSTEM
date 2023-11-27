<%-- 
    Document   : details
    Created on : 22-Sept-2023, 12:01:27 pm
    Author     : venkadesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voter Details</title>
         <link rel="stylesheet" href="details.css">
    </head>
    <body>
    <center>
        
        
        <h1>YOUR DETAILS</h1>
        
        <img src="user.jpg" alt="UserImage" width="250px" border="2px solid black">
        
        <table>
            <th>VOTER ID</th>
            <th>NAME</th>
            <th>AGE</th>
            <th>GENDER</th>
            <th>MOBILE NUMBER</th>
        
        <% 
            try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venkadesh?zeroDateTimeBehavior=CONVERT_TO_NULL","venkadesh","Arun007.");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select name,age,gender,phone,voter_id from signup");
                int u=0;
                while(rs.next())
                {
                   String s=(String)session.getAttribute("vn");
                   String ss=rs.getString("name");
                   if(s.equals(ss))
                   {
                   u=1;
                    %>
                   <tr>
                       <td><%= rs.getString("voter_id") %></td>
                       <td><%= rs.getString("name") %></td>
                       <td><%= rs.getString("age") %></td>
                       <td><%= rs.getString("gender") %></td>
                       <td><%= rs.getString("phone") %></td>
                   </tr>
                    <%
                        
                    }
                }
 if(u==0)
                {
                    %>
                    <tr>
                       <td><%="-"%></td>
                       <td><%="-"%></td>
                       <td><%="-"%></td>
                       <td><%="-"%></td>
                       <td><%="-"%></td>
                   </tr>
                    <%
                }
            }
            catch(Exception e)
            {

            }
            %>
        </table>
         <a href="voting.jsp"  class="button">VOTING BOOTH</a>
    </center>
    </body>
</html>
