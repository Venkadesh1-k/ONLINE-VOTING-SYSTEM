<%-- 
    Document   : voting
    Created on : 22-Sept-2023, 7:13:17 pm
    Author     : venkadesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Integer n=(Integer)session.getAttribute("Count");
            Integer s=(Integer)session.getAttribute("p");
            if(s==1)
            {%>
            <jsp:forward page="winner.jsp"/>
                        <%
                            }
            
            else if(n==0)
                    {
                    session.setAttribute("Count",1);
                       
                        %>
                        <jsp:forward page="election.jsp"/>
                        <%
                            }
else
{
%>
                        <jsp:forward page="pic.jsp"/>
                        <%
}
%>
    </body>
</html>
