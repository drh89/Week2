<%-- 
    Document   : table
    Created on : 28-08-2019, 22:20:21
    Author     : Dennis
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<link rel="stylesheet" type="text/css" href="css/myCss.css">-->

        <title>JSP Page</title>
    </head>
    <body>

        <%
            List<String> headerNames = (ArrayList) request.getAttribute("headerNames");
            List<String> values = (ArrayList) request.getAttribute("values");
            int temp = 0;

        %>
        <table>
            <tr>
            <th>Header</th>
            <th>Value</th>
            </tr>
            
                <%                   
                    for(String str : headerNames) {

                        
                %>
                <tr>
                <td>
                    <%=str%>

                </td>
                <td>
                    <%=values.get(temp)%>
                    
                </td>
                </tr>
                <%
                    temp++;
                    }%>


            
          



            </tr>






        </table>
    </body>
</html>
