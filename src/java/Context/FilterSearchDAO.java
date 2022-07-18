/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Context;

import Model.Brand;
import Model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Loki
 */
public class FilterSearchDAO {

    public FilterSearchDAO() {
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

    public ArrayList<Product> searchProductsByName(String name) {
        ArrayList<Product> products = new ArrayList<>();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String sql = "SELECT [ProductID]\n"
                    + "      ,[Name]\n"
                    + "      ,[Description]\n"
                    + "      ,[Price]\n"
                    + "      ,[Quantity]\n"
                    + "      ,[Status]\n"
                    + "      ,[Image]\n"
                    + "      ,[BrandID]\n"
                    + "  FROM [Product] Where [Name] LIKE '%"+name+"%' ";
            rs = stm.executeQuery(sql);
            while(rs.next()){
                Product p = new Product();
                p.setProductId(rs.getInt("ProductID"));
                p.setName(rs.getString("Name"));
                p.setDescrip(rs.getString("Description"));
                p.setPrice(rs.getInt("Price"));
                p.setQuantity(rs.getInt("Quantity"));
                
                p.setImg(rs.getString("Image"));
                p.setBrandId(rs.getInt("BrandID"));
                Brand b = new Brand();
                BrandDAO bDB = new BrandDAO();
                b = bDB.getBrand(rs.getInt("BrandID"));
                p.setBrand(b);
                products.add(p);
            }

        } catch (SQLException ex) {
            Logger.getLogger(FilterSearchDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
    
    
    
    
    public ArrayList<Product> filterSearch(String name, int[] brand_id, double from, double to){
        ArrayList<Product> products = new ArrayList<>();
        int check = 0;
        boolean check_numBrands = false;
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String sql = "SELECT [ProductID]\n"
                    + "      ,[Name]\n"
                    + "      ,[Description]\n"
                    + "      ,[Price]\n"
                    + "      ,[Quantity]\n"

                    + "      ,[Image]\n"
                    + "      ,[BrandID]\n"
                    + "  FROM [Product] Where [Name] LIKE '%"+name+"%' ";
            
            
            for(int i = 0; i < brand_id.length;i++){
                if(brand_id[i] != 0){
                    check += 1;
                    if(check == 1){
                    sql += " And (BrandID = '"+brand_id[i]+"' ";
                    }
                    else{
                    sql += " OR BrandID = '"+brand_id[i]+"' ";
                    check_numBrands = true;
                    }
                }
            }
            if(check_numBrands == true){
                sql += ")";
            }
            
            
            if(from != -1){
                sql += " AND Price >= '"+from+"'";
            }
            
            if(to != -1){
                sql += " AND Price <= '"+to+"'";
            }
            
            rs = stm.executeQuery(sql);
            while(rs.next()){
                Product p = new Product();
                p.setProductId(rs.getInt("ProductID"));
                p.setName(rs.getString("Name"));
                p.setDescrip(rs.getString("Description"));
                p.setPrice(rs.getInt("Price"));
                p.setQuantity(rs.getInt("Quantity"));

                p.setImg(rs.getString("Image"));
                p.setBrandId(rs.getInt("BrandID"));
                Brand b = new Brand();
                BrandDAO bDB = new BrandDAO();
                b = bDB.getBrand(rs.getInt("BrandID"));
                p.setBrand(b);
                products.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(FilterSearchDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
}
