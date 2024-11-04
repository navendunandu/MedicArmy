<%-- 
    Document   : SolvedComplaint
    Created on : 5 Oct, 2024, 10:54:14 AM
    Author     : ADWAITHA SAJU
--%>
   <%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

    
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solved complaint</title>
    </head>
    <body>
        <h1 align="center">Solved complaints</h1>
        
        
                
<table border="1" align="center">
    <thead>
        <
        <tr>  
            <th>Sl.No</th>
             <th>User Name</th>
            <th>Clinic Name</th>
            <th>Title</th>
            <th>Content</th>
            <th>Date</th>
             <th>ReplyDate</th>
           
        </tr>
    </thead>
    <tbody>

        <%
             String selQry1 = "select * from tbl_complaint c inner join tbl_user u on c.user_id = u.user_id inner join  tbl_clinic cl on c.clinic_id = cl.clinic_id  where c.complaint_status=1";
            ResultSet rs1 = con.selectCommand(selQry1);
            int i = 0;
            while (rs1.next()) {
                i++;
        %>
        <tr>
            <td><%=i%></td>
            <td><%= rs1.getString("user_name")%></td>
            <td><%= rs1.getString("clinic_name")%></td>
            <td><%= rs1.getString("complaint_title")%></td>
            <td><%= rs1.getString("complaint_content")%></td>
            <td><%= rs1.getString("complaint_date")%></td>
            <td><%= rs1.getString("reply_date")%></td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>
        
        
        
        
    </body>
</html>
 
