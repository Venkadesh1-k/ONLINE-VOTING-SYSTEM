<%-- 
    Document   : votertable
    Created on : 24-Sept-2023, 7:20:33 pm
    Author     : venkadesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voter Details</title>
    </head>
    <link rel="stylesheet" href="table.css">
    <body>
        
         
       <center>
           <h1>VOTER DETAILS</h1>
        
        <table>
            <th>Voter ID</th>
            <th>Voter Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Mobile Number</th>
            <th>Status</th>
            <th>EDIT</th>
            <% 
            try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venkadesh?zeroDateTimeBehavior=CONVERT_TO_NULL","venkadesh","Arun007.");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from signup");
                int u=0;
                String v="";
                while(rs.next())
                {
                    u+=1;
                    %>
                   <tr>
                       <td><%= rs.getString("voter_id") %></td>
                       <td><%= rs.getString("name") %></td>
                       <td><%= rs.getString("age") %></td>
                       <td><%= rs.getString("gender") %></td>
                       <td><%= rs.getString("phone") %></td>
                       <td><%String s=rs.getString("status");
                    if(s.equals("1"))
                    {
                    %><div class="y"><input type="submit" value="VOTED"></div>
                    <%}
                    else
                    {%>
                    <div class="r"><input type="submit" value="NOT-VOTED"></div>
                    <%}%></td>
                     <td>
                         <form action="voterdelete.jsp" method="post">
                               <input hidden name="a" value=<%= rs.getString("voter_id") %>>
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
        <a href="signup.jsp"  class="button">ADD VOTER</a>
        <a href="home.jsp"  class="button">GO BACK</a>
    </center>
    
    </body>
</html>