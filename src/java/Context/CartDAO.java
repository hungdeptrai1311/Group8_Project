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
    
    public void addCart(int userId, int productId, int quantity, String size){
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "SELECT * FROM Cart WHERE UserID = " + userId + " AND ProductID = " + productId + " AND Size = '" + size + "'";
            rs = stm.executeQuery(strSelect);
            while(rs.next()){
                String strUpdate = "UPDATE Cart SET Quantity = Quantity + " + quantity;
                stm.execute(strUpdate);
                return;
            }
            String strUpdate = "INSERT INTO Cart VALUES (" + userId + ", " + productId + ", " +quantity + ", '" + size + "')";
            
            stm.execute(strUpdate);

        } catch (Exception e) {
            System.err.println("" + e.getMessage());
        }
    }
    
    public ArrayList<Cart> getCartListByUserId(int userId){
        ArrayList<Cart> list = new ArrayList<Cart>();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "SELECT * FROM Cart WHERE UserID = " + userId;
            rs = stm.executeQuery(strSelect);
            
            while(rs.next()){
                int productId = rs.getInt(2);
                int quantity = rs.getInt(3);
                String size = rs.getString(4);
                
                list.add(new Cart(userId, productId, quantity, size));
            }
            
            return list;
        } catch (Exception e) {
            System.err.println("" + e.getMessage());
        }
        return null;
    }
}
