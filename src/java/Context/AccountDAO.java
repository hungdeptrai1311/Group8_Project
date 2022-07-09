/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Context;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author baqua
 */
public class AccountDAO {
    //tạo các thành phần kết nối xử lý dữ liệu
    public AccountDAO() {
        connectDB();
    }

    Connection cnn;//kết nối đến db
    Statement stm;//thực thi các câu lệnh sql
    ResultSet rs;//lưu trữ và xử lý dữu liệu 
    
    private void connectDB() {
        try {
            cnn = (new DBContext()).getConnection();
            System.out.println("Connect successfully");
        } catch (Exception e) {
            System.out.println("Connect error:" + e.getMessage());
        }

    }
    public boolean checkAdmin(String Username) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select Account.Role from Account where Account.Username = '" + Username + "'";
            
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return true;
            }

        } catch (Exception e) {
            System.out.println("Login Error:" + e.getMessage());
        }
        return false;
    }
    public String getRoleByUsername(String Username) {
        String role = "";
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select Account.Role from Account where Account.Username = '" + Username + "' ";

            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                role = rs.getString(1);
            }
        } catch (Exception e) {
        }
        return role;
    }
    public void UpdatePass(String a, String pass) {
        try {
            Statement stmt = cnn.createStatement();
            String sql = "UPDATE Account SET Password = '"+pass+"' WHERE Username =  '"+a+"'";
            stmt.executeUpdate(sql);
            System.out.println("Update pass success");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
