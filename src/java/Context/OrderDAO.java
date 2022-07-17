/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Context;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author vuman
 */
public class OrderDAO {

    public OrderDAO() {
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
    
    public void addOrder(int productId, int quantity, int payment){
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strInsert = "INSERT INTO [Order](ProductID, BillID, Quantity, Payment) VALUES (" + productId + ",  (SELECT TOP 1 BillID FROM Bill ORDER BY BillID DESC), " + quantity + ", " +payment +")";

            stm.executeUpdate(strInsert);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
