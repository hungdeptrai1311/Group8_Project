/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Context;

import Model.Size;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author vuman
 */
public class SizeDAO {

    public SizeDAO() {
        connectDB();
    }

    Connection cnn;
    Statement stm;
    ResultSet rs;

    private void connectDB() {
        try {
            cnn = (new DBContext()).getConnection();
            System.out.println("Connect successfully");
        } catch (Exception e) {
            System.out.println("Connect error: " + e.getMessage());
        }
    }

    public ArrayList<Size> getAllSizeByProductId(int id) {
        ArrayList<Size> list = new ArrayList<Size>();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "SELECT * FROM Size WHERE ProductID = " + id;

            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String size = rs.getString(2);
                int quantity = rs.getInt(3);
                list.add(new Size(id, size, quantity));
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return list;
    }
    
    public void deleteSizeAfterBuy(int productId, String size, int quantity){
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            
            stm.executeUpdate("UPDATE Size SET Quantity = Quantity - " + quantity + "WHERE ProductID = " + productId + " AND Size = '" +size + "'");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
