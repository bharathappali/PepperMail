<%-- 
    Document   : savepost
    Created on : Nov 26, 2015, 5:46:02 PM
    Author     : appalibharath
--%>

<%@page import="Action.Poster"%>
<%@page import="helperclasses.PostHolderObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DBconnect.DBconnect"%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
    String post=request.getParameter("post");
    
    try
    {
    
    Date d =new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
    String pdate  = sdf.format(d);
    SimpleDateFormat sdf1 = new SimpleDateFormat("hh:mm");
    String ptime = sdf1.format(d);
    String user = session.getAttribute("username").toString();
    PostHolderObject p = new PostHolderObject();
    p.setUsername(user);
    p.setPost(post);
    p.setPdate(pdate);
    p.setPtime(ptime);
    
    Poster posting = new Poster();
    posting.savePost(p);
    }catch(Exception e){
        System.out.println("error in savepost.jsp");
        
    }
%>