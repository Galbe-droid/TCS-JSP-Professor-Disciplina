/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import java.sql.*;

/**
 *
 * @author gabri
 */
public class Connect {
    Connection con = null;
    
    
    public Connection getConnection()
    {
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String sql = "jdbc:derby://localhost:1527/BDAvaliacao";
            
            con = DriverManager.getConnection(sql);
    
        }catch(Exception e)
        {
            throw new RuntimeException("Erro em Connect: " + e);
        }
        
        return con;
    }    
}
