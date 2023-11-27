<%-- 
    Document   : winner
    Created on : 24-Sept-2023, 10:30:22 pm
    Author     : venkadesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="winner.css">
</head>
<body>
    <header class="h">
        <nav class="m">
            <h3> <a href="home.jsp">GO BACK</a></h3>
        </nav>
    </header>
    <center>
           <h1>RESULTS</h1>
        <table>
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
                ResultSet rs=st.executeQuery("select * from can where VoteCount=(select max(VoteCount)from can)");
                if(rs.next())
                {
                String u=rs.getString("name");
                session.setAttribute("wn",u);
                %>
                   <tr>
                       <td><%= rs.getString("can_id") %></td>
                       <td><%= rs.getString("name") %></td>
                       <td><%= rs.getString("party") %></td>
                       <td><%= rs.getString("VoteCount") %></td>
                       
                   </tr>

            <%}}
            catch(Exception e)
            {

            }
            %>
        </table>
    </center>
    <div class="k">
        <marquee>
            <span><b><%=session.getAttribute("wn")%></b></span>&nbsp;got high number of votes
        </marquee>
    </div>
</body>
</html>