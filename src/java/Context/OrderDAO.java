/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Context;

/**
 *
 * @author yuyu2
 */
public class OrderDAO extends DBContext {

    public void addOrder(int productId, int quantity, int payment, int userid) {
        try {
            executeUpdate("INSERT INTO [Order](ProductID, BillID, Quantity, Payment) VALUES (?, (SELECT TOP 1 BillID FROM Bill WHERE [CustomerID] = ? ORDER BY BillID DESC), ?, ?)", productId, userid, quantity, payment);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
