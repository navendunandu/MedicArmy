<%-- 
    Document   : Apponitment
    Created on : 20 Sep, 2024, 3:25:38 PM
    Author     : ADWAITHA SAJU
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@ page import="java.time.LocalDate" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="Head.jsp" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Appoitment</title>
    </head>
    <body>
        
        
        <%
            if (request.getParameter("btnsubmit") != null) {
                String fordate = request.getParameter("fordate");
                String slot = request.getParameter("slot");
                String token = request.getParameter("token");
                String amount = request.getParameter("amount");
                String availabilityId=request.getParameter("selslot");
                String insQry = "insert into tbl_appointment(appointment_fordate,appointment_token,appointment_amount,user_id,availability_id,appointment_date) values('" + fordate + "','" + token + "','" + amount + "','" + session.getAttribute("uid")  + "','" + availabilityId + "',curdate())";
                //out.println(insQry);
                if (con.executeCommand(insQry)) {
        %>
        <script>
            alert("Record Saved");
            window.location = "HomePage.jsp";
        </script>
        <%
                }
            }
            
        %>
        
        
        
        <h1 align="center">Appointment</h1>
        
        <form method="post">
            <table align="center">
                

                <tr>
                    <td>ForDate</td>
                    <td><input type="date"  name="fordate" id="fordate" min="<%= LocalDate.now() %>" placeholder="Enter fordate"  required="required"></td>
                </tr>
                

                 <tr>
                    <td>TimeSlot</td>
                    <td>


                        <select name="selslot" id="selslot" onchange="getToken()">
                            <option name="--select--">...Select</option>

                            <%
                                String selQry1 = "select * from tbl_availability where clinic_id="+request.getParameter("cid");
                                ResultSet rs1 = con.selectCommand(selQry1);
                                while (rs1.next()) { 
                            %>

                            <option value="<%=rs1.getString("availability_id")%>"><%=rs1.getString("availability_stime")%> - <%=rs1.getString("availability_etime")%></option>

                            <%
                                }
                            %>

                        </select>



                </tr>

                
                <tr>
                    <td>Token</td>
                    <td><input type="text" name="token" id="token" required="required" readonly=""><br></td>
                </tr>
                
                 <tr>
                    <td>Amount</td>
                    <td><input type="text" name="amount" id="amount" placeholder="Enter amount" required="required" readonly="" value="100"><br></td>
                </tr>
                

                <tr>
                    <td colspan="2" align="center"><input type="submit"  id="btnsubmit" name="btnsubmit" value="Submit"></td>
                </tr>
            </table>
        </form>
                            <script src="../Assets/JQ/jQuery.js"></script>
                        <script>

                                        function getToken()
                                        {
                                            var date = document.getElementById("fordate").value;
                                            var avl = document.getElementById("selslot").value;
                                            if(date==""){
                                                alert("Select A Date")
                                            }
                                            else{
                                            $.ajax({
                                                url: "../Assets/AjaxPages/AjaxToken.jsp?date=" + date +"&avl="+avl,
                                                success: function(result) {
                                                    document.getElementById("token").value=result;
                                                }
                                            });
                                        }
                                        }
                                                            </script>
    </body>
</html>


<%@include  file="Foot.jsp" %>
