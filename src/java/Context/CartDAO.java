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

    public void addCart(int userId, int productId, int quantity, String size) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            rs = stm.executeQuery("SELECT *, (SELECT Quantity FROM Product WHERE Product.ProductID = Cart.ProductID) AS [StockQuantity] FROM Cart WHERE UserID = " + userId + " AND ProductID = " + productId + " AND Size = '" + size + "'");
            if (rs.next()) {
                int oldQuantity = rs.getInt("Quantity");
                int stockQuantity = rs.getInt("StockQuantity");

                if (oldQuantity + quantity > stockQuantity) {
                    quantity = stockQuantity - oldQuantity;
                }

                stm.execute("UPDATE Cart SET Quantity = Quantity + " + quantity + " WHERE UserID = " + userId + " AND ProductID = " + productId + " AND Size = '" + size + "'");
                return;
            }
            stm.execute("INSERT INTO Cart VALUES (" + userId + ", " + productId + ", " + quantity + ", '" + size + "')");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Cart> getCartListByUserId(int userId) {
        ArrayList<Cart> list = new ArrayList<>();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "SELECT * FROM Cart WHERE UserID = " + userId;
            rs = stm.executeQuery(strSelect);

            while (rs.next()) {
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
    
    public void deleteCartAfterBuy(int userId){
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            stm.executeUpdate("DELETE FROM Cart WHERE UserID = " + userId);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
