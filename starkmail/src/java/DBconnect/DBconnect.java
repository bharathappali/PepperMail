/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBconnect;

/**
 *
 * @author appalibharath
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnect 
{
    static Connection con;
    public static Connection getCon()
   {

       //Connection con =null;
       try{
           DriverManager.registerDriver(new com.mysql.jdbc.Driver());
           con = DriverManager.getConnection("jdbc:mysql://localhost:8889/peppermail","root","root");
    
          }
       catch(SQLException e){
          System.out.println(e); 
       }
       return con;
   }
}
