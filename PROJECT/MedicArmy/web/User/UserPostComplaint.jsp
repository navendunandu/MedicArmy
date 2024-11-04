<%-- 
    Document   : PostCompliant
    Created on : 28 Sep, 2024, 11:02:42 AM
    Author     : ADWAITHA SAJU
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>post complaint</title>
    </head>
    <body>
        <%
        if (request.getParameter("btnsubmit") != null) {
            String title = request.getParameter("txttitle");
            String content = request.getParameter("txtcontent");
            String date = request.getParameter("txtdate");
            String clinicId = request.getParameter("selclinic");
             String insQry = "insert into tbl_complaint(complaint_title,complaint_content,complaint_date,user_id,clinic_id) values('" + title + "','" + content + "','" + date + "','" + session.getAttribute("uid")  + "','" + clinicId  + "')";
                out.println(insQry);
                if (con.executeCommand(insQry)) {
        %>
        <script>
            alert("Record Saved");
            window.location = "UserPostComplaint.jsp";
        </script>
        <%
                }
            }
            
            
        %>
        
       
        <h1 align="center">Complaint</h1>
        <form method="post">
            <table align="center">
                <tr>
                    <td>Title</td>
                    <td><input type="text" name="txttitle" id="txttitle" placeholder="Enter Your Title" required="required" value=><br></td>
                </tr>
                
                
                 <tr>
                    <td>Clinic</td>
                    <td>


                        <select name="selclinic">
                            <option name="--select--">...Select</option>

                            <%
                                String selQry = "select * from tbl_clinic";
                                ResultSet rs = con.selectCommand(selQry);
                                while (rs.next()) { 
                            %>

                            <option value="<%=rs.getString("clinic_id")%>"><%=rs.getString("clinic_name")%></option>

                            <%
                                }
                            %>

                        </select>



                </tr>
                 <tr>
                    <td>Content</td>
                    <td><textarea  name="txtcontent" id="txtcontent" placeholder="Enter Your Content" required="required"></textarea><br></td>
                </tr>
                
                 <tr>
                    <td>Date</td>
                    <td><input type="date" name="txtdate" id="txtdate" placeholder="Enter Your Date" required="required"><br></td>
                </tr> 

                
                <tr>
                    <td colspan="2" align="center"><input type="submit"  id="btnsubmit" name="btnsubmit" value="Submit">
                         <input type="submit"  id="btncancel" name="btncancel" value="Cancel">
                    </td>
                </tr>


            </table>
        </form>
    </body>
</html>


<table border="1" align="center">
    <thead>
        <tr>  
            <th>Sl.No</th>
            <th>Title</th>
            <th>Content</th>
            <th>Date</th>
            <th>Reply</th>
           
        </tr>
    </thead>
    <tbody>

        <%
             String selQry1 = "select * from tbl_complaint c inner join tbl_user u on c.user_id=u.user_id where c.user_id=" + session.getAttribute("uid");
            ResultSet rs1 = con.selectCommand(selQry1);
            int i = 0;
            while (rs1.next()) {
                i++;
        %>
        <tr>
            <td><%=i%></td>
            <td><%= rs1.getString("complaint_title")%></td>
            <td><%= rs1.getString("complaint_content")%></td>
            <td><%= rs1.getString("complaint_date")%></td>
            <td><%= rs1.getString("complaint_reply")%></td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>
    
<%@include file="Foot.jsp" %>



