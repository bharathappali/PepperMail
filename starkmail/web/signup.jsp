<%-- 
    Document   : signup
    Created on : Nov 26, 2015, 1:44:50 AM
    Author     : appalibharath
--%>

<%@page import="java.sql.Statement"%>
<%@page import="DBconnect.DBconnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String firstname=request.getParameter("fname");
    String lastname=request.getParameter("lname");
    String username=request.getParameter("username");
    String gender = request.getParameter("gender");
    String email=request.getParameter("email");
    String password=request.getParameter("pass");
    String imgname = "defualtuser.png";
    try{
        Connection con = DBconnect.getCon();
        Statement st = con.createStatement();
       st.executeUpdate("insert into user values('"+firstname+"','"+lastname+"','"+username+"','"+email+"','"+gender+"','"+password+"','"+imgname+"')");
       con.close();
%>
    
        <jsp:forward page="index.html"></jsp:forward>
    <%
    }catch(Exception e){
        %>
        
        <jsp:forward page="index.html"></jsp:forward>
        <%
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
