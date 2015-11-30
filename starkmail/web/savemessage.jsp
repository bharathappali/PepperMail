<%-- 
    Document   : savemessage
    Created on : Nov 27, 2015, 2:35:23 AM
    Author     : appalibharath
--%>

<%@page import="Action.Messenger"%>
<%@page import="helperclasses.MsgHolderObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DBconnect.DBconnect"%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
    String toname = request.getParameter("to");
    String message = request.getParameter("msg");
try
    {
    
    Date d =new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
    String mdate  = sdf.format(d);
    SimpleDateFormat sdf1 = new SimpleDateFormat("hh:mm");
    String mtime = sdf1.format(d);
    String user = session.getAttribute("username").toString();
    MsgHolderObject m = new MsgHolderObject();
    m.setFromname(user);
    m.setToname(toname);
    m.setMessage(message);
    m.setMdate(mdate);
    m.setMtime(mtime);
    Messenger msgr = new Messenger();
    msgr.saveMessage(m);
    }catch(Exception e){
        
    }
    %>
