/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

import DBconnect.DBconnect;
import helperclasses.PostHolderObject;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author appalibharath
 */
public class Poster {
    
    public void savePost(PostHolderObject p)
    {
        try
        {
         
            Connection con = DBconnect.getCon();
            Statement st = con.createStatement();
            st.executeUpdate("insert into posts values(null,'"+p.getUsername()+"','"+p.getPost()+"','"+p.getPdate()+"','"+p.getPtime()+"')");
          
            con.close();
        }
        catch(SQLException e)
        {
            System.out.println("Error"+e);
        }
        
    }

}
