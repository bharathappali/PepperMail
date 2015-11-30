<%-- 
    Document   : allposts
    Created on : Nov 26, 2015, 5:30:41 PM
    Author     : appalibharath
--%>

<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/pepper_style.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="css/templatemo-style.css">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnect.DBconnect"%>
<%@page import="java.sql.Connection"%>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
        
        <div class="col-md-12" id="supportdiv" style="height: 100%">
    <div class="col-md-12" id="cd-timeline">
<%
    try{
        Connection con = DBconnect.getCon();
        Statement st = con.createStatement();
       ResultSet rs = st.executeQuery("select m.username,m.imgname,p.username,p.post,p.time,p.date from posts p,user m where m.username=p.username");
       int i=1;
       while(rs.next()){
           i++;
           if(i%2==0){
              %>
<div class="cd-timeline-block activate">
                            <div class="cd-timeline-img cd-picture">
                                <img src="<%=rs.getString("m.imgname")%>" class="pepper-logimg" alt="Picture">
                            </div>

                            <div class="cd-timeline-content" style="background: skyblue">
                                <h2 style="padding: 20px 20px 0px 20px;text-align: left"><%=rs.getString("m.username")%><label class="datentime" style="display: none;float:right;font-size: small;padding-top: 3px"><%=rs.getString("p.time")%>&nbsp;&nbsp;<%=rs.getString("p.date")%></label></h2>
                                <p class="pepper-post-content" style="padding: 5px 20px 20px 20px;margin-top: -30px"><%=rs.getString("p.post")%></p>
                            </div>
                        </div>

                        
    
    <% 
           }else{
           %>
    <div class="cd-timeline-block activate">
                            <div class="cd-timeline-img cd-movie">
                                <img src="<%=rs.getString("m.imgname")%>" class="pepper-logimg" alt="Picture">
                            </div>

                            <div class="cd-timeline-content " style="background: skyblue">
                                <h2 style="padding: 20px 20px 0px 20px;text-align: left"><%=rs.getString("m.username")%><label class="datentime" style="display: none;float:right;font-size: small"><%=rs.getString("p.time")%>&nbsp;&nbsp;<%=rs.getString("p.date")%></label></h2>
                                <p class="pepper-post-content" style="padding: 5px 20px 20px 20px;margin-top: -30px"><%=rs.getString("p.post")%></p>
                            </div>
                        </div>
    
    <%
           }
       
       }
con.close();
    }catch(Exception e){
        
    }
    %>
    </div>
</div>
    <script>
        $(function(){
            $(".activate").hover(function(){
                $(".datentime").show();
            },function(){
                $(".datentime").hide();
            });
        });
    </script>
