<%-- 
    Document   : NewUserRegistration
    Created on : 19 Aug, 2024, 12:23:38 PM
    Author     : ADWAITHA SAJU
--%>


<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@ page import="java.time.LocalDate" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NewUserRegistration</title>
    </head>
    <body>

       
        
        <%
            if (request.getParameter("did") != null) {
                String delQry = "delete from tbl_user where user_id=" + request.getParameter("did");
                if (con.executeCommand(delQry)) {
        %>
        <script>
            alert("Deleted");
            window.location = "NewUserRegistration.jsp";
        </script>
        <%
                }
            }
        %>


        <h1 align="center">User Registration</h1>
        <form  method="post" action="../Assets/ActionPages/UserUpload.jsp" enctype="multipart/form-data">
            <table align="center">
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="txtname" id="txtname" placeholder="Enter Your Name" required="required"><br></td>
                </tr>

                <tr>
                    <td>Email</td>
                    <td><input type="email" name="txtemail" id="txtemail" placeholder="Enter Your Email" required="required"><br></td>
                </tr>

                <tr>
                    <td>Password</td>
                    <td><input type="password" name="txtpassword" id="txtpassword" placeholder="Enter Your Password" required="required"><br></td>
                </tr>

                <tr>
                    <td>Address</td>
                    <td><textarea  name="txtaddress" id="txtaddress" placeholder="Enter Your Address" required="required"></textarea><br></td>
                </tr>


                <tr>
                    <td>Contact</td>
                    <td><input type="txt" name="txtcontact" id="txtcontact" placeholder="Enter Your Phone Number" required="required"><br></td>
                </tr>

                <tr>
                    <td>Gender</td>
                    <td><input type="radio" name="gender" id="gender1"  value="male" required="required">Male
                        <input type="radio" name="gender" id="gender2" value="female">Female<br>
                    </td>
                </tr>

                <tr>
                    <td>DOB</td>
                    <td><input type="date" name="dob" id="dob" placeholder="Enter Your Dob" required="required" max="<%= LocalDate.now().minusYears(18) %>"><br></td>
                </tr> 

                <tr>
                    <td>Photo</td>
                    <td><input type="file" id="photo" name="photo" placeholder="Upload photo" required="required"><br></td>
                </tr>

                <tr>
                    
                    <tr>
                    <td>District</td>
                    <td>


                        <select name="seldistrict" onchange="getPlace(this.value)">
                            <option name="">...Select</option>

                            <%
                                String selQry = "select * from tbl_district";
                                ResultSet rs = con.selectCommand(selQry);
                                while (rs.next()) { 
                            %>

                            <option value="<%=rs.getString("district_id")%>"><%=rs.getString("district_name")%></option>

                            <%
                                }
                            %>

                        </select>



                </tr>

                    <tr>
                    <td>Place</td>

                    <td><select name="sel_place" id="sel_place">
                            <option value="">---select---</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td colspan="2" align="center"><input type="submit"  id="btnsubmit" name="btnsubmit" value="submit"></td>
                </tr>
            </table>
        </form>
                            <script src="../Assets/JQ/jQuery.js"></script>
                            <script>
                                    function getPlace(cid) {
                                    $.ajax({
                                    url: "../Assets/AjaxPages/AjaxPlace.jsp?cid=" + cid,
                                    success: function (result) {

                                    $("#sel_place").html(result);
                                  }
                                });
                             }

                            </script>
    </body>
</html>

    
    <center>     
    <a href="HomePage.jsp">HomePage</a>
</center>
