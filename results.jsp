<%-- 
    Document   : results
    Created on : 24-Sept-2023, 9:38:39 pm
    Author     : venkadesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Candidate Details</title>
    </head>
    <link rel="stylesheet" href="results.css">
    <body>
        
         
       <center>
           <h1>CURRENT RESULTS</h1>
        <table>
            <th>Current Position</th>
            <th>Candidate ID</th>
            <th>Candidate Name</th>
            <th>Party Name</th>
            <th>Vote Count</th>
            <% 
            try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venkadesh?zeroDateTimeBehavior=CONVERT_TO_NULL","venkadesh","Arun007.");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from can order by VoteCount desc");
                int u=0;
                int p=0;
                while(rs.next())
                {
                    u+=1;
                    p++;
                    %>
 
                   <tr>
                       <td><%= p %></td>
                       <td><%= rs.getString("can_id") %></td>
                       <td><%= rs.getString("name") %></td>
                       <td><%= rs.getString("party") %></td>
                       <td><%= rs.getString("VoteCount") %></td>
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
        <a href="publish.jsp"  class="button">PUBLISH RESULTS</a>
        <a href="home.jsp"  class="button">GO BACK</a>
    </center>
    
    </body>
</html>
