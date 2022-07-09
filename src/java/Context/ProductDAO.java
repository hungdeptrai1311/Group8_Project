/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Context;

import Model.Brand;
import Model.Product;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

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
                Product p = new Product();
                p.setProductId(rs.getInt(1));
                p.setName(rs.getString(2));
                p.setDescrip(rs.getString(3));
                p.setPrice(rs.getString(4));
                p.setQuantity(rs.getInt(5));
                p.setStatus(rs.getString(6));
                p.setImg(rs.getString(7));
                p.setBrandId(rs.getInt(8));
                Brand b = new Brand();
                BrandDAO bDB = new BrandDAO();
                b = bDB.getBrand(rs.getInt(8));
                p.setBrand(b);
                list.add(p);
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return list;
    }

    public Product getProduct(int id) {
        Product p = new Product();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strGet = "SELECT [ProductID]\n"
                    + "      ,[Name]\n"
                    + "      ,[Description]\n"
                    + "      ,[Price]\n"
                    + "      ,[Quantity]\n"
                    + "      ,[Status]\n"
                    + "      ,[Image]\n"
                    + "      ,[BrandID]\n"
                    + "  FROM [Product] where ProductID = '" + id + "'";
            rs = stm.executeQuery(strGet);
            while (rs.next()) {
                p.setProductId(rs.getInt("ProductID"));
                p.setName(rs.getString("Name"));
                p.setDescrip(rs.getString("Description"));
                p.setPrice(rs.getString("Price"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setStatus(rs.getString("Status"));
                p.setImg(rs.getString("Image"));
                p.setBrandId(rs.getInt("BrandID"));
                Brand b = new Brand();
                BrandDAO bDB = new BrandDAO();
                b = bDB.getBrand(rs.getInt("BrandID"));
                p.setBrand(b);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return p;
    }

    public void deleteProduct(int id) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strDelete = "delete from Product where ProductID = '" + id + "'";
            stm.executeUpdate(strDelete);
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insert(Product p) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strInsert = "INSERT INTO Product\n"
                    + "           (Name\n"
                    + "           ,Description\n"
                    + "           ,Price\n"
                    + "           ,Quantity\n"
                    + "           ,Status\n"
                    + "           ,Image\n"
                    + "           ,BrandID)\n"
                    + "     VALUES\n"
                    + "           ('" + p.getName() + "' \n"
                    + "           ,'" + p.getDescrip() + "'\n"
                    + "           ,'" + p.getPrice() + "'\n"
                    + "           ,'" + p.getQuantity() + "'\n"
                    + "           ,'" + p.getStatus() + "'\n"
                    + "           ,'" + p.getImg() + "'\n"
                    + "           ,'" + p.getBrandId() + "')";
            stm.executeQuery(strInsert);
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editProduct(Product p) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strUpdate = "UPDATE [Product]\n"
                    + "   SET [Name] = '"+ p.getName() +"'\n"
                    + "      ,[Description] ='"+ p.getDescrip() +"'\n"
                    + "      ,[Price] = '"+ p.getPrice() +"'\n"
                    + "      ,[Quantity] = '"+ p.getQuantity() +"'\n"
                    + "      ,[Status] = '"+ p.getStatus() +"'\n"
                    + "      ,[Image] = '"+ p.getImg() +"'\n"
                    + "      ,[BrandID] = '"+ p.getBrandId() +"'\n"
                    + " WHERE ProductID = '"+ p.getProductId() +"'";
            stm.executeUpdate(strUpdate);
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
