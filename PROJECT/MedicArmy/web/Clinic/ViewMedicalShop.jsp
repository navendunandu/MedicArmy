<%-- 
    Document   : ViewMedicalShop
    Created on : 27 Oct, 2024, 4:12:16 PM
    Author     : ADWAITHA SAJU
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="Head.jsp" %>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
  <%
            String SelQry="Select * from tbl_clinic where  clinic_id="+session.getAttribute("cid");
            ResultSet res=con.selectCommand(SelQry);
            res.next();
            String place=res.getString("place_id");
            
            
            
            
            %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
         <table border="1" align="center">
             <h1 align="center"> Medicalshop Shops</h1>
            <tr>
                <td>SI</td>
                <td>MedicalShop Name</td>
                
                <td>MedicalShop Contact</td>
                <td> MedicalShop Email</td>
                <td> MedicalShop Address</td>
                <td>Action</td>
            </tr>
            <%
            String SelQry1="select * from tbl_shop where shop_vstatus='1' and place_id="+place;
//            out.print(SelQry1);
            ResultSet re=con.selectCommand(SelQry1);
            int i=0;
            while(re.next())
            {
                i++;
                
                %>
                <tr>
                    <td><%= i %></td>
                    <td><%=re.getString("shop_name")%></td>
                    <td><%=re.getString("shop_contact")%></td>
                    <td><%=re.getString("shop_email")%></td>
                    <td><%=re.getString("shop_address")%></td>
                    <td><a href="Presecription.jsp?mid=<%= re.getString("shop_id") %>&aid=<%= request.getParameter("aid") %>">Send </a> </td>
                    
                
            </tr>
                <%
            }
            %>
        </form>
        
            
        </table>
    </body>
</html>

<%@include  file="Foot.jsp" %>
