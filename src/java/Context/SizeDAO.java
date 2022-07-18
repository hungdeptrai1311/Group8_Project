/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Context;

import Model.Size;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author vuman
 */
public class SizeDAO extends DBContext {

    public ArrayList<Size> getAllSizeByProductId(int pid) {
        ArrayList<Size> list = new ArrayList<>();
        try ( ResultSet rs = executeQuery("SELECT * FROM Size WHERE ProductID = ?", pid)) {
            while (rs.next()) {
                String size = rs.getString("Size");
                int quantity = rs.getInt("Quantity");
                list.add(new Size(pid, size, quantity));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public void deleteSizeAfterBuy(int pid, String size, int quantity) {
        try {
            executeUpdate("UPDATE Size SET Quantity = Quantity - ? WHERE ProductID = ? AND Size = ?", quantity, pid, size);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
