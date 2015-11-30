<%-- 
    Document   : logout
    Created on : Nov 26, 2015, 2:34:22 PM
    Author     : appalibharath
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    request.getSession(true);
    response.sendRedirect(request.getContextPath() + "/index.html");
%>


