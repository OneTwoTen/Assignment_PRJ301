/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import entity.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author doan7
 */
public class LoginDBContext extends DBContext{
    public Account getAccount(String user, String pass){
        try {
            String sql = "select * from Account \n" +
                "where [username] = ? AND [password] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            stm.setString(2, pass);
            ResultSet rs = stm.executeQuery();
            if(rs.next()){
                Account account = new  Account();
                account.setUsername(rs.getString("username"));
                account.setPassword(rs.getString("password"));
                return account;
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public Account getAccountWithUser(String user){
        try {
            String sql = "select * from Account \n" +
                "where [username] = ? ";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);            
            ResultSet rs = stm.executeQuery();
            if(rs.next()){
                Account account = new  Account();
                account.setUsername(rs.getString("username"));
                account.setPassword(rs.getString("password"));
                return account;
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    
    public List<Account> getAccounts(){
        List<Account> accounts = new ArrayList<>();
        try {
            String sql ="select* from Account";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {                
                 Account account = new  Account();
                account.setUsername(rs.getString("username"));
                account.setPassword(rs.getString("password"));
                accounts.add(account);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return accounts;
    }
    
    public void insert(String user, String pass){
        try {
            String sql="INSERT INTO [Account]\n" +
                    "           ([username]\n" +
                    "           ,[password])\n" +
                    "     VALUES\n" +
                    "           (?\n" +
                    "           ,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            stm.setString(2, pass);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(LoginDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
}
