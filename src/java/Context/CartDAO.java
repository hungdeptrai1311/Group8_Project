/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Context;

import Model.Cart;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author vuman
 */
public class CartDAO {

    public CartDAO() {
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
            System.err.println("Connect error:" + e.getMessage());
        }

    }
    
    public void addCart(int userId, int productId, int quantity){
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strUpdate = "INSERT INTO Cart VALUES (" + userId + ", " + productId + ", " +quantity + ")";
            
            stm.execute(strUpdate);

        } catch (Exception e) {
            System.err.println("" + e.getMessage());
        }
    }
}
