/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Context;

import Model.Product;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author vuman
 */
public class ProductDAO {
    public ProductDAO() {
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
    
    public ArrayList<Product> getAllproducts() {
        ArrayList<Product> list = new ArrayList<Product>();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "SELECT * FROM Product";

            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                int productId = rs.getInt(1);
                String name = rs.getString(2);
                String descrip = rs.getString(3);
                double price = rs.getDouble(4);
                int quantity = rs.getInt(5);
                String status = "Còn hàng";
                if(!rs.getBoolean(6)){
                    status = "Hét hàng";
                }
                String img = rs.getString(7);
                int brandId = rs.getInt(8);
                list.add(new Product(productId, name, descrip, price, quantity, status, img, brandId));
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return list;
    }
}