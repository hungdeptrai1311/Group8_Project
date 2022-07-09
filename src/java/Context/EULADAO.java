/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Context;

import Model.EULA;
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
public class EULADAO{

    public EULADAO(){
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

    public ArrayList<EULA> getAllEulas() {
        ArrayList<EULA> eulas = new ArrayList<>();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String sql = "SELECT [ID]\n"
                    + "      ,[EULA]\n"
                    + "  FROM [EULA]";
            rs = stm.executeQuery(sql);
            while (rs.next()) {
                EULA eula = new EULA();
                eula.setEula_id(rs.getInt("ID"));
                eula.setEula_content(rs.getString("EULA"));
                eulas.add(eula);
            }
        } catch (SQLException ex) {
            Logger.getLogger(EULADAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return eulas;
    }

    public void editEULA(EULA eula) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strUpdate = "update [EULA] set EULA ='" + eula.getEula_content() + "' where id ='" + eula.getEula_id() + "'";
            stm.execute(strUpdate);
            System.out.println("Update success");
        } catch (SQLException ex) {
            Logger.getLogger(EULADAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
