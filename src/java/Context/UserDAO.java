package Context;

import Model.User;
import com.oracle.jrockit.jfr.Producer;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

/**
 *
 * @author baqua
 */
public class UserDAO {

    //tạo các thành phần kết nối xử lý dữ liệu
    public UserDAO() {
        connectDB();
    }

    Connection cnn;//kết nối đến db
    Statement stm;//thực thi các câu lệnh sql
    ResultSet rs;//lưu trữ và xử lý dữu liệu 

    public boolean checlogin(String username, String password) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select * from Account where username ='" + username + "'and pass ='" + password + "'";
//            String name = "select name from tblUser ";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return true;
            }

        } catch (Exception e) {
            System.out.println("Login Error:" + e.getMessage());
        }
        return false;
    }

    private void connectDB() {
        try {
            cnn = (new DBContext()).getConnection();
            System.out.println("Connect successfully");
        } catch (Exception e) {
            System.out.println("Connect error:" + e.getMessage());
        }

    }

    public String getNameByAccount(String account) {
        String name = "";
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select * from tblUser where account ='" + account + "'";

            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                name = rs.getString(3);
            }
        } catch (Exception e) {
        }
        return name;
    }

    public boolean checkAccount(String account) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select * from tblUser where account ='" + account + "'";
            String name = "select name from tblUser ";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Login Error:" + e.getMessage());
        }
        return false;
    }

    public void UpdatePass(String account, String newPass) {

        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strUpdate = "update tblUser set pass ='" + newPass + "' where account ='" + account + "'";
            stm.execute(strUpdate);
            System.out.println("Update pass success");

        } catch (Exception e) {
        }

    }

    public boolean checkAccountDOB(String account, String dob) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select * from tblUser where account ='" + account + "'and dateofbirth ='" + dob + "'";
            String name = "select name from tblUser ";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return true;
            }

        } catch (Exception e) {
            System.out.println("Login Error:" + e.getMessage());
        }
        return false;
    }

    
    
    
    
    
}
