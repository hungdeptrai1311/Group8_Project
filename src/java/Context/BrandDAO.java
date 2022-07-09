/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Context;

import Model.Brand;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Loki
 */
public class BrandDAO {

    public BrandDAO() {
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

    public ArrayList<Brand> getAllbrands() {
        ArrayList<Brand> list = new ArrayList<>();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "SELECT [BrandID]\n"
                    + "      ,[Name]\n"
                    + "      ,[Description]\n"
                    + "  FROM [Brand]";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                Brand b = new Brand();
                b.setBrand_id(rs.getInt("BrandID"));
                b.setBrand_name(rs.getString("Name"));
                b.setBrand_description(rs.getString("Description"));
                list.add(b);
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return list;
    }
    
    public Brand getBrand(int id) {
        Brand brand = new Brand();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "SELECT [BrandID]\n"
                    + "      ,[Name]\n"
                    + "      ,[Description]\n"
                    + "  FROM [Brand] Where BrandID = '" + id + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                brand.setBrand_id(rs.getInt("BrandID"));
                brand.setBrand_name(rs.getString("Name"));
                brand.setBrand_description(rs.getString("Description"));
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return brand;
    }
    
}
