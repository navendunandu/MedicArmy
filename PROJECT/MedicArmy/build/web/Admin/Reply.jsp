<%-- 
    Document   : Reply
    Created on : 28 Sep, 2024, 12:17:44 PM
    Author     : ADWAITHA SAJU
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
          
        
         <%
            if (request.getParameter("btnsubmit") != null) {
                String UpQry = "update  tbl_complaint set complaint_status=1, complaint_reply='"+ request.getParameter("txtcontent") +"',reply_date='"+request.getParameter("date") +"' where complaint_id=" + request.getParameter("uid");
//                out.print(UpQry);
                if (con.executeCommand(UpQry)) {
        %>
        <script>
            alert("Updated");
            //window.location = "Reply.jsp";
        </script>
        <%
                }
//                else{
//                    out.print("Failed");
//                }
            }
        %>

        <h1 align="center">Reply</h1>
        
         <form method="post">
            <table align="center">

                  <tr>
                        <td>Content</td>
                    <td><textarea  name="txtcontent" id="txtcontent" placeholder="Enter Your Content" required="required"></textarea><br></td>
                </tr>
                
                <tr>
                    <td>Date</td>
                    <td><input type="date" name="date" id="date" placeholder="Enter Date" required="required"><br></td>
                </tr> 
                
                 <tr>
                    <td colspan="2" align="center"><input type="submit"  id="btnsubmit" name="btnsubmit" value="Submit"></td>
                </tr>
                
            </table>
         </form>

    </body>
</html>
