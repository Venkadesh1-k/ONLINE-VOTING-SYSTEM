<%-- 
    Document   : table
    Created on : 16-Sept-2023, 11:34:26 am
    Author     : Venkadesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Candidate Details</title>
    </head>
    <link rel="stylesheet" href="table.css">
    <body>
        
         
       <center>
           <h1>CANDIDATE DETAILS</h1>
        
        <table>
            <th>Candidate ID</th>
            <th>Candidate Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Party Name</th>
            <th>EDIT</th>
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
                    u+=1;
                    %>
                   <tr>
                       <td><%= rs.getString("can_id") %></td>
                       <td><%= rs.getString("name") %></td>
                       <td><%= rs.getString("age") %></td>
                       <td><%= rs.getString("gender") %></td>
                       <td><%= rs.getString("party") %></td>
                        <td>
                            <form action="candelete.jsp" method="post">
                               <input hidden name="a" value=<%= rs.getString("can_id") %>>
                               <input type="submit" value="DELETE">
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
        <a href="cand.jsp"  class="button">ADD CANDIDATE</a>
        <a href="home.jsp"  class="button">GO BACK</a>
    </center>
    
    </body>
</html>