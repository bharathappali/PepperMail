<%-- 
    Document   : changeprofpic
    Created on : Nov 30, 2015, 4:27:16 AM
    Author     : appalibharath
--%>

<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>

<%@page import="java.io.File"%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>

<%@page import="org.apache.commons.io.FilenameUtils"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try{
        Date d =new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
    String imgdate  = sdf.format(d);
    SimpleDateFormat sdf1 = new SimpleDateFormat("hh:mm:ss");
    String imgtime = sdf1.format(d);
    System.out.println(imgtime);
    String user = session.getAttribute("username").toString();
    DiskFileItemFactory factory=new DiskFileItemFactory();
    ServletFileUpload upload=new  ServletFileUpload(factory);
    List items= upload.parseRequest(request);
    System.out.println(items.size());
     for(Object obj:items)
     {
         System.out.println("inside a if");
         FileItem imgfile = (FileItem)obj;
         if(!imgfile.isFormField()){
             
             String path= getServletContext().getRealPath("/")+"/profilepics/";
             String ext = FilenameUtils.getExtension(imgfile.getName());
             String filename=user+imgdate+imgtime+ext;
             File ifile = new File(path,filename);
             System.out.println("success");
         }
     }
    }catch(Exception e){
        System.out.println(e);
    }
%>
