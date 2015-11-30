<%-- 
    Document   : check
    Created on : Nov 26, 2015, 4:37:28 AM
    Author     : appalibharath
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnect.DBconnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user = request.getParameter("userid");
    try{
        Connection con = DBconnect.getCon();
        Statement st = con.createStatement();
       ResultSet rs = st.executeQuery("select username from user");
       int i = -1;
       while(rs.next()){
           String userid = rs.getString("username");
           if(userid.equalsIgnoreCase(user)){
               i=1;
               break;
           }else{
               i=0;
              
           }
       }
       out.print(i);
       con.close();
}catch(Exception e){
}

       %>
