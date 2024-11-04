<%-- 
    Document   : DeliveryEditProfile
    Created on : 18 Sep, 2024, 3:22:14 PM
    Author     : ADWAITHA SAJU
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
  <%@page import="java.sql.ResultSet"%>  


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="Head.jsp" %>
<!DOCTYPE html>
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

        String updQry = "update tbl_deliveryboy set deliveryboy_name='" + dName + "',deliveryboy_email='" + dEmail + "',deliveryboy_contact='" + dContact + "',deliveryboy_address='" + dAddress + "' where deliveryboy_id=" + session.getAttribute("did");
        if (con.executeCommand(updQry)) 
        {
%>
<script>
    alert("UPDATED")
    window.location = "DeliveryEditProfile.jsp";
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

    String SelQry = "select * from tbl_deliveryboy d inner join tbl_place p on p.place_id=d.place_id  where d.deliveryboy_id=" + session.getAttribute("did");
//    out.print(SelQry);
    ResultSet rs = con.selectCommand(SelQry);
    if (rs.next()) {
%>


<form method="post">

    <table align="center" border="1">

        <tr>
            <td>Name</td>
            <td><input type="text" name="txtname" value="<%=rs.getString("deliveryboy_name")%>" ></td>
        </tr>    

        <tr>
            <td>Email</td>
            <td><input type="text" name="txtemail" value="<%=rs.getString("deliveryboy_email")%>"></td>
        </tr>

        <tr>
            <td>Contact number</td>
            <td><input type="text" name="txtcontact" value="<%=rs.getString("deliveryboy_contact")%>"></td>
        </tr>

        <tr>
            <td>Address</td>
            <td><input type="text" name="txtaddress" value="<%=rs.getString("deliveryboy_address")%>"></td>
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


<%@include  file="Foot.jsp" %>

