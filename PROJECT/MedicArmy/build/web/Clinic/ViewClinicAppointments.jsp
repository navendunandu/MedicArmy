<%-- 
    Document   : VeiwClinicAppointments
    Created on : 27 Oct, 2024, 3:49:44 PM
    Author     : ADWAITHA SAJU
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="Head.jsp" %>
<%
    if(request.getParameter("id")!=null){
        Mail.MailConnection m = new Mail.MailConnection();
            String mailid[] = {request.getParameter("email")};

            String updQry = "update tbl_request SET request_status=1 where ads_id='" + request.getParameter("accept") + "'";
            con.executeCommand(updQry);
            String name = request.getParameter("name");
            String subject = "Confirmation";
            String text = "Respected " + name + ", \r\n \r\n"
                    + " We are pleased to offer you the position of "+request.getParameter("title")
                    + " at "+request.getParameter("sname")+" We feel confident that you will contribute your skils and experience towards the growth of our organization."
                    + " Please confirm your acceptance by visiting our office head soon within a week"
                    + " This is from Job Connect \r\n"
                    + " Team Job Connect.";
            boolean b = m.sendMail(mailid, subject, text);
            if(b)
            {
                response.sendRedirect("ViewClinicAppointments.jsp");
            }
        }

        if (request.getParameter("reject") != null) {

            String updQry = "update tbl_request SET request_status=2 where ads_id='" + request.getParameter("reject") + "'";
            con.executeCommand(updQry);
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <h1 align="center">Appointment Details</h1>
        
        <table border="1" align="center">
    <thead>
        <tr>
            <th>Sl.No</th>
            <th>User</th>
            <th>Fordate</th>
            <th>StartTime</th>
            <th>EndTime</th>
            <th>Amount</th>
            <th>Contact</th>
            <th>Slot</th>
            <th>Action</th>
         
          
        </tr>
    </thead>
    <tbody>

        <%
            String selQry1 = "select * from tbl_appointment ap inner join tbl_availability a on ap.availability_id = a.availability_id inner join tbl_user u on u.user_id = ap.user_id where clinic_id= '" + session.getAttribute("cid")  + "' order by appointment_date DESC";
//    out.println(selQry1);
            ResultSet rs1 = con.selectCommand(selQry1);
            int i = 0;
            while (rs1.next()) {
                i++;
        %>
        <tr>
            <td><%=i%></td>
            <td><%= rs1.getString("user_name")%></td>
            <td><%= rs1.getString("appointment_fordate")%></td>
             <td><%= rs1.getString("availability_stime")%></td>
            <td><%= rs1.getString("availability_etime")%></td>
            <td><%= rs1.getString("appointment_amount")%></td>
            <td><%= rs1.getString("user_contact")%></td>
            <td><%= rs1.getString("appointment_token")%></td>
             <td>
                 <% if(rs1.getInt("appointment_status") == 0) 
                 {
                     %><a href="Chat/Chat.jsp?uid=<%= rs1.getString("user_id") %>">Chat</a>|
                     
                     <a href="ViewMedicalShop.jsp?aid=<%= rs1.getString("appointment_id") %>">View MedicalShop</a>|
                     <%
                     
                  }
                 
                  else if(rs1.getInt("appointment_status") == 1) 
                  {
                      %>
                      <a href="ViewPresecription.jsp?aid=<%= rs1.getString("appointment_id") %>">View Prescription</a>
                      <%
                  }
                  else if(rs1.getInt("appointment_status") == 2) 
                  {
                      %>
                    Order Packed.
                      <%
                  }
                  else if(rs1.getInt("appointment_status") == 3) 
                  {
                      %>
                     Order Assigned.
                      <%
                  }
                 else if(rs1.getInt("appointment_status") == 4) 
                  {
                      %>
                     Order Taken.
                      <a href="ViewPresecription.jsp?aid=<%= rs1.getString("appointment_id") %>">View Prescription</a>
                      <%
                  }
                 else if(rs1.getInt("appointment_status") == 5) 
                  {
                      %>
                     Order Completed..
                      <a href="ViewPresecription.jsp?aid=<%= rs1.getString("appointment_id") %>">View Prescription</a>
                      <%
                  }
                    else if(rs1.getInt("appointment_status") == 6)
                  {
                      %>
                     Booking Cancelled.
                      
                      <%
                  }
                    %>
                 
                  
                 
                 
             </td>
           
           
            
            

        </tr>
        <%
            }
        %>
    </body>
</html>

    </body>
</html>
<%@include  file="Foot.jsp" %>