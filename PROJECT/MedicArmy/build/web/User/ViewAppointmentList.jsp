<%-- 
    Document   : ViewAppointmentList
    Created on : 27 Oct, 2024, 2:52:41 PM
    Author     : ADWAITHA SAJU
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Head.jsp" %>

<%

    if (request.getParameter("cid") != null) {
        String Up = " update tbl_appointment set appointment_status='6' where appointment_id=" + request.getParameter("cid");
        if (con.executeCommand(Up)) {
%>
<script>
    alert(" The 50% of Your Booking Amount Has Benn Refunded. ");
    window.location = "ViewAppointmentList.jsp";
</script>
<%
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
                    <th>Clinic</th>
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
                    String selQry1 = "select * from tbl_appointment ap inner join tbl_availability a on ap.availability_id=a.availability_id inner join tbl_clinic c on c.clinic_id=a.clinic_id where ap.user_id= '" + session.getAttribute("uid") + "' order by appointment_date";
        //    out.println(selQry1);
                    ResultSet rs1 = con.selectCommand(selQry1);
                    int i = 0;
                    while (rs1.next()) {
                        i++;
                %>
                <tr>
                    <td><%=i%></td>
                    <td><%= rs1.getString("clinic_name")%></td>
                    <td><%= rs1.getString("appointment_fordate")%></td>
                    <td><%= rs1.getString("availability_stime")%></td>
                    <td><%= rs1.getString("availability_etime")%></td>
                    <td><%= rs1.getString("appointment_amount")%></td>
                    <td><%= rs1.getString("clinic_contact")%></td>
                    <td><%= rs1.getString("appointment_token")%></td>
                    <td>
                        <% if (rs1.getInt("appointment_status") == 0) {

                        %>

                        Appoinment Booked.
                        <a href="Chat/Chat.jsp?cid=<%= rs1.getString("clinic_id")%>">Chat</a> 
                        <a href="javascript:void(0)" onclick="cancel(<%=rs1.getString("appointment_id")%>)">Cancel Appoinment</a> 

                        <%                        } else if (rs1.getInt("appointment_status") == 1) {

                        %>

                        <a href="ViewPresecription.jsp?aid=<%= rs1.getString("appointment_id")%>">View Prescription</a> 
                        
                        

                        <%
                        } else if (rs1.getInt("appointment_status") == 2) {

                        %>
                        Order Packed.
                        <%                        } else if (rs1.getInt("appointment_status") == 3) {

                        %>
                         <a href="ViewPresecription.jsp?aid=<%= rs1.getString("appointment_id")%>">View Prescription</a> ||
                        Order Assigned.
                       
                        <%                        } else if (rs1.getInt("appointment_status") == 4) {

                        %>
                         <a href="ViewPresecription.jsp?aid=<%= rs1.getString("appointment_id")%>">View Prescription</a> ||
                        Order Taken .
                        <a href="Review.jsp?id=<%= rs1.getString("clinic_id")%>">Review</a>
                        <%                        } else if (rs1.getInt("appointment_status") == 5) {

                        %>
                         <a href="ViewPresecription.jsp?aid=<%= rs1.getString("appointment_id")%>">View Prescription</a> ||
                         <a href="Review.jsp?id=<%= rs1.getString("clinic_id")%>">Review</a>
                         
                        Order Completed .
                        <%                        }
                        %>


                    </td>




                </tr>
                <%
                    }
                %>
            <script>
                function cancel(id) {
                    let msg = confirm("Cancelling appointment will only refund 50% of the appoinment charge. Are you sure you want to cancel?")
                    if (msg) {
                        window.location = "ViewAppointmentList.jsp?cid=" + id;
                    }

                }
            </script>

    </body>
</html>


<%@include file="Foot.jsp" %>

