<%-- 
    Document   : AjaxSearchHospital
    Created on : 5 Oct, 2024, 2:27:35 PM
    Author     : deepa
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
 <tr>
<%
    String pid = request.getParameter("pid");
    String did = request.getParameter("did");
    String cid = request.getParameter("cid");
    
    String qry="select * from tbl_clinic c inner join tbl_place p on c.place_id=p.place_id inner join tbl_type t on t.type_id=c.type_id  where clinic_vstatus=1";
    if(pid!=""){
        qry = qry + " and c.place_id="+pid;
    }
    if(did!=""){
        qry = qry + " and p.district_id="+did;
    }
    if(cid!=""){
        qry = qry + " and t.type_id="+cid;
    }
    
    ResultSet rs1 =con.selectCommand(qry);
                            int i = 0;
                            while(rs1.next()){
                                i++;
                    %>
                    <td>    
        <table border="0" align="center">
            
        <tr>
            <!--<td colspan="2"><img src="../Assets/Files/ClinicDocs/-->
                                 <%--<%=rs1.getString("clinic_logo")%>--%>
                                 <!--" width="150"></td>-->
        </tr>
        
        <tr>
            <td> <%= rs1.getString("clinic_name")%></td></tr>
        <tr>
            <td> <%= rs1.getString("clinic_address")%></td>
        </tr>
        
         <tr>
            <td> <%= rs1.getString("type_name")%></td>
        </tr>
         <tr>
            <td> <%= rs1.getString("clinic_contact")%></td>
        </tr>
        
        
        
        
        <tr>
           
            <td colspan="2"><a href="ViewClinicDetails.jsp?hid=<%=rs1.getString("clinic_id")%>">View More</a> || <a href="Apponitment.jsp?cid=<%=rs1.getString("clinic_id")%>">Book Appoinment</a></td>
            
   
        </tr>
        </table>
                    </td>
<%
                     if(i%4==0){
                         out.print("</tr><tr>");
                     }
            }
            %>
 </tr>