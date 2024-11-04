<%-- 
    Document   : UserEditProfile
    Created on : 18 Sep, 2024, 2:22:10 PM
    Author     : ADWAITHA SAJU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="Head.jsp" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
  <%@page import="java.sql.ResultSet"%>  
  
  
<%
    String dName = "";
    String dEmail = "";
    String dContact = "";
    String dAddress = "";

    if (request.getParameter("btnsubmit") != null) {
        dName = request.getParameter("txtname");
        dEmail = request.getParameter("txtemail");
        dContact = request.getParameter("txtcontact");
        dAddress = request.getParameter("txtaddress");

        String updQry = "update tbl_user set user_name='" + dName + "',user_email='" + dEmail + "',user_contact='" + dContact + "',user_address='" + dAddress + "' where user_id=" + session.getAttribute("uid");
        if (con.executeCommand(updQry)) 
        {
%>
<script>
    alert("UPDATED")
    window.location = "UserEditProfile.jsp";
</script>
<%
} else {
%>
<script>
    alert("Failed")
</script>
<%
        }
    }

    String SelQry = "select * from tbl_user u inner join tbl_place p on p.place_id=u.place_id  where u.user_id=" + session.getAttribute("uid");
//    out.print(SelQry);
    ResultSet rs = con.selectCommand(SelQry);
    if (rs.next()) {
%>


<form method="post">

    <table align="center" border="1">

        <tr>
            <td>Name</td>
            <td><input type="text" name="txtname" value="<%=rs.getString("user_name")%>" ></td>
        </tr>    

        <tr>
            <td>Email</td>
            <td><input type="text" name="txtemail" value="<%=rs.getString("user_email")%>"></td>
        </tr>

        <tr>
            <td>Contact number</td>
            <td><input type="text" name="txtcontact" value="<%=rs.getString("user_contact")%>"></td>
        </tr>

        <tr>
            <td>Address</td>
            <td><input type="text" name="txtaddress" value="<%=rs.getString("user_address")%>"></td>
        </tr>

        <td colspan="2" align="center">
            <input type="submit" name="btnsubmit" value="UPDATE">
        </td>

    </table>
</form>
         <%
    }
    else{
        out.print("ERROR!!!!");
    }
            %>
</body>

<center>     
    <a href="HomePage.jsp">Back</a>
</center>


<%@include file="Foot.jsp" %>
