<%-- 
    Document   : HomePage.jsp
    Created on : 26 Aug, 2024, 2:21:23 PM
    Author     : ADWAITHA SAJU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HomePage</title>
    </head>
    <body>
        <h1 align="center">Home Page</h1>    
        <h1 align="center"><%=session.getAttribute("aname")%></h1>

        <form method="post">
            <table align="center">
                <tr>
                    <td>
                        <a href="District.jsp">District</a>
                    </td>>
                </tr>
                <tr>
                    <td>
                        <a href="Place.jsp">Place</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="Category.jsp">Category</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="SubCategory.jsp">SubCategory</a>
                    </td>
                </tr>
                
                
                <tr>
                    <td>
                        <a href="ViewClinicRegistration.jsp">Registered Clinics</a>
                    </td>
                </tr>
                
          
                
                
                <tr>
                    <td>
                        <a href="ViewShopRegistration.jsp">Registered Shops</a>
                    </td>
                </tr>
                
                
                <tr>
                    <td>
                        <a href="ViewUserRegistration.jsp">Registered Users</a>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <a href="ViewComplaint.jsp">Complaints</a>
                    </td>
                </tr>
                
                  <tr>
                    <td>
                        <a href="SolvedComplaint.jsp">Solved complaints</a>
                    </td>
                </tr>
                
            </table>
        </form>  
    </body>
</html>



