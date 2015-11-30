/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

/**
 *
 * @author appalibharath
 */
import DBconnect.DBconnect;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "Login", urlPatterns = {"/validation"})
public class Login extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
         try
        {
            
       
        Connection con = DBconnect.getCon();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from user where username='"+request.getParameter("username-log")+"' and password='"+request.getParameter("password-log")+"' ")  ;
        System.out.println(request.getParameter("username-log"));
        
        if(rs.next())
        {
           
           
           HttpSession session = request.getSession(true);
           System.out.println(rs.getString("username"));
           session.setAttribute("fname", rs.getString("firstname"));
           session.setAttribute("lname", rs.getString("lastname"));
           session.setAttribute("username", rs.getString("username"));
          session.setAttribute("email", rs.getString("email"));
          session.setAttribute("Password", rs.getString("password"));
          session.setAttribute("imgname", rs.getString("imgname"));
          System.out.println(session.getAttribute("fname"));
            response.sendRedirect("main.jsp");
        }else{
            response.sendRedirect("signinerror.html");
        }
       
      
      con.close();
        }
        catch(SQLException e)
        {
            System.out.println("Inside servlet"+e);
        }
    }
 
}
