<%-- 
    Document   : ShopRegistration
    Created on : 28 Aug, 2024, 2:20:29 PM
    Author     : ADWAITHA SAJU
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
+        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ShopRegistration</title>
    </head>
    <body>
        
   
        
        <%
            if (request.getParameter("did") != null) {
                String delQry = "delete from tbl_shop where shop_id=" + request.getParameter("did");
                if (con.executeCommand(delQry)) {
        %>
        <script>
            alert("Deleted");
            window.location = "ShopRegistration.jsp";
        </script>
        <%
                }
            }
        %>
        
        
        <h1 align="center">Medical Shop Registration</h1>
       <form  method="post" action="../Assets/ActionPages/ShopUpload.jsp" enctype="multipart/form-data">
            <table align="center">
                 <tr>
                    <td>Name</td>
                    <td><input type="text" name="txtname" id="txtname" placeholder="Enter Your Name" required="required"><br></td>
                </tr>
                
                <tr>
                    <td>Address</td>
                    <td><textarea name="txtaddress" id="txtaddress" placeholder="Enter the Address" required="required"></textarea><br></td>
                </tr>
               
              
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="txtemail" id="txtemail" placeholder="Enter Your Email" required="required"><br></td>
                </tr>
                
                <tr>
                    <td>Contact</td>
                    <td><input type="text" name="txtcontact" id="txtcontact" placeholder="Enter Contact" required="required"><br></td>
                </tr>
                
                
                <tr>
                    <td>logo</td>
                    <td><input type="file" name="txtlogo" id="txtlogo" placeholder="Enter Logo" required="required"><br></td>
                </tr>
                
                <tr>
                    <td>proof</td>
                    <td><input type="file" name="proof" id="proof" placeholder="Enter Proof" required="required"><br></td>
                </tr>
                
                <tr>
                    <td>password</td>
                    <td><input type="text" name="password" id="password" placeholder="Enter password" required="required"><br></td>
                </tr>
                
                
                
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
                    <td colspan="2" align="center"><input type="submit" name="btnsubmit" id="btnsubmit" value="Submit"><br></td>
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

