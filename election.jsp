<%-- 
    Document   : election
    Created on : 20-Sept-2023, 8:59:58 pm
    Author     : venkadesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Election</title>
         <link rel="stylesheet" href="election.css">
    </head>
    <body>
       <center>
        <h1>ELECTION 2023</h1>
        <table>
            <th>Candidate ID</th>
            <th>Candidate Name</th>
            <th>Party Name</th>
            <th>VOTE</th>
            <% 
            try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venkadesh?zeroDateTimeBehavior=CONVERT_TO_NULL","venkadesh","Arun007.");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select name,age,gender,can_id,party from can");
                int u=0;
                while(rs.next())
                {
                    u=1;
                    %>
                   <tr>
                       <td><%= rs.getString("can_id") %></td>
                       <td><%= rs.getString("name") %></td>
                       <td><%= rs.getString("party") %></td>
                       <td>
                           <form action="voteincreament.jsp" method="post">
                               <input hidden name="a" value=<%= rs.getString("can_id") %>>
                               <input type="submit" value="VOTE">
                           </form>
                       </td>
                   </tr>
                    <%
                }
                if(u==0)
                {
                    %>
                    <tr>
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
         
    </center>
    </body>
</html>