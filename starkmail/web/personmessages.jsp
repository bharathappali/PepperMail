<%-- 
    Document   : personmessages
    Created on : Nov 27, 2015, 2:34:40 AM
    Author     : appalibharath
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnect.DBconnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/pepper_style.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>

        
        
        <%
            String friends = request.getParameter("chatter");
            if(friends!=null){
            try{
        Connection con = DBconnect.getCon();
        Statement st = con.createStatement();
       ResultSet rs = st.executeQuery("SELECT m.username,m.imgname,p.fromname,p.toname,p.message,p.date,p.time from user m,messages p where ((p.fromname='"+friends+"' and p.toname='"+session.getAttribute("username").toString()+"' and (m.username=p.fromname)) or (p.toname='"+friends+"' and p.fromname='"+session.getAttribute("username").toString()+"' and (m.username=p.fromname)))");
       
       while(rs.next()){
           System.out.println(rs.getString("p.message"));
           
          %>
          <div class="col-md-12 margin-bottom-15">
               <div class="col-md-2">
                   <img src="<%=rs.getString("m.imgname")%>" class="pepper-logimg">
               </div>
               <div class="col-md-10">
                   <p><%=rs.getString("p.message")%></p>
               </div>
          </div>
          <%
          
            }
          

con.close();

            }catch(Exception e){
                System.out.println(e);
            }
}else{
 System.out.println("hiiiii in else "+friends);
}
        %>
           
  