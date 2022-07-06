package Context;

import Model.Account;
import Model.User;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
    PreparedStatement ps;
    ResultSet rs;//lưu trữ và xử lý dữu liệu 

    public boolean checlogin(String Username, String Password) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select * from Account where Username ='" + Username + "'and Password ='" + Password + "'";
            
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
            String strSelect = "select [User].Name from [User] join [Account] on [User].UserID = [Account].UserID where [Account].Username = '"+account+"' ";

            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                name = rs.getString(1);
            }
        } catch (Exception e) {
        }
        return name;
    }

    public boolean checkAccount(String username) {

        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select * from Account where Account.Username = '" + username + "'";
            
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
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return true;
            }

        } catch (Exception e) {
            System.out.println("Login Error:" + e.getMessage());
        }
        return false;
    }

    public void addUser(User u, Account a) {

        try {
            stm = cnn.createStatement();
            stm.execute("INSERT INTO [Account]([Username], [Password], [Role]) \n" +
"	VALUES ('" + a.getUsername() + "', '" + a.getPassword() + "', '" + a.getRole() + "')\n" +
"\n" +
"	INSERT INTO [User]([UserID], [Name], [Email], [Address], [Phone]) \n" +
"	VALUES ((SELECT [UserID] FROM [Account] WHERE [Username] = '" + a.getUsername() + "'), '" + u.getName() + "', '" + u.getEmail() + "', '" + u.getAddress() + "', '" + u.getPhone() + "')");
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public ArrayList<User> getAllUser() {
        ArrayList<User> list = new ArrayList<User>();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select * from tblUser ";

            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String account = rs.getString(1);
                String pass = rs.getString(2);
                String name = rs.getString(3);
                String gender = "Male";
                if (rs.getBoolean(4) == false) {
                    gender = "Female";
                }
                String address = rs.getString(5);
                SimpleDateFormat f = new SimpleDateFormat("dd/MM/yyyu");
                String dob = f.format(rs.getDate(6));
                //list.add(new User(account, pass, name, gender, address, dob));
                for (User a : list) {
                   // System.out.println("name:" + a.getAccount());

                }
            }

        } catch (Exception e) {
            System.out.println("Login Error:" + e.getMessage());
        }
        return list;
    }

    public void deleteResult(User n) {
        try {
            Statement stmt = cnn.createStatement();
            //String sql = "delete from tblUser where account = '"+n.getAccount()+"'";
            //stmt.executeUpdate(sql);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
