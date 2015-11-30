/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

import DBconnect.DBconnect;
import helperclasses.MsgHolderObject;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author appalibharath
 */
public class Messenger {
    public void saveMessage(MsgHolderObject m)
    {
        try
        {
         
            Connection con = DBconnect.getCon();
            Statement st = con.createStatement();
            st.executeUpdate("insert into messages values(null,'"+m.getFromname()+"','"+m.getToname()+"','"+m.getMessage()+"','"+m.getMdate()+"','"+m.getMtime()+"')");
           
            con.close();
        }
        catch(SQLException e)
        {
            System.out.println("Error"+e);
        }
        
    }
}
