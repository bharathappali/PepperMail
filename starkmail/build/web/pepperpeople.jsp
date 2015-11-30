<%-- 
    Document   : pepperpeople
    Created on : Nov 26, 2015, 4:04:21 PM
    Author     : appalibharath
--%>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/pepper_style.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnect.DBconnect"%>
<%@page import="java.sql.Connection"%>
<%
    try{
        Connection con = DBconnect.getCon();
        Statement st = con.createStatement();
       ResultSet rs = st.executeQuery("select * from user");
       while(rs.next()){
       %>
       <div class="col-md-12 margin-bottom-15 ids" id="<%=(String)rs.getString("username")%>" style="cursor:pointer">
           <div class="col-md-3" style="left:-40px">
                    <img src="<%=rs.getString("imgname")%>" class="pepper-logimg">
                </div>
                
                <div class="col-md-9" style="left: -40px;">
                    <label style="margin-top: 12%;cursor: pointer"><strong style="font-size: large;color: black">&nbsp;&nbsp;<%=rs.getString("username")%></strong></label>
                </div>
            </div>

<%
       }

con.close();
    }catch(Exception e){
        
    }
    %>
    <script>
        $(function(){
            $("div.ids").click(function(event){
                var toname = $(event.currentTarget).attr('id');
            window.parent.document.getElementById("messengername").innerHTML=toname;
            $.post("personmessages.jsp",{chatter : "" + toname + ""},function(data){
                window.parent.$("#message-div").load("personmessages.jsp");
                window.parent.$("#messagesdiv").slideDown();
                window.parent.$("#notfctnbackdiv").hide();
                window.parent.$("#notfctndiv").hide();
            });
            
            });
        });

    </script>