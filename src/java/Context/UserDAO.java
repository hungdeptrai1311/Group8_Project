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
    
    private void connectDB() {
        try {
            cnn = (new DBContext()).getConnection();
            System.out.println("Connect successfully");
        } catch (Exception e) {
            System.out.println("Connect error:" + e.getMessage());
        }

    }
    
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

    

    public String getNameByAccount(String account) {
        String name = "";
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select [User].Name from [User] join [Account] on [User].UserID = [Account].UserID where [Account].Username = '" + account + "' ";

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

    

    public boolean checkAccountEmail(String account, String email) {
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select [Account].Username ,[User].Email from [User] join [Account] on [User].UserID = [Account].UserID \n"
                    + "where [Account].Username = '"+ account +"' and [User].Email = '"+ email +"'";
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
            stm.execute("INSERT INTO [Account]([Username], [Password], [Role]) \n"
                    + "	VALUES ('" + a.getUsername() + "', '" + a.getPassword() + "', '" + a.getRole() + "')\n"
                    + "\n"
                    + "	INSERT INTO [User]([UserID], [Name], [Email], [Address], [Phone]) \n"
                    + "	VALUES ((SELECT [UserID] FROM [Account] WHERE [Username] = '" + a.getUsername() + "'), N'" + u.getName() + "', '" + u.getEmail() + "', N'" + u.getAddress() + "', '" + u.getPhone() + "')");
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    

    public void UpdatePass(String a, String pass) {
        try {
            Statement stmt = cnn.createStatement();
            String sql = "UPDATE Account SET Password = '"+pass+"' WHERE Username =  '"+a+"'";
            stmt.executeUpdate(sql);
            System.out.println("Update pass success");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public String getUserByAccount(String account) {
        String name = "";
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "";

            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                name = rs.getString(1);
            }
        } catch (Exception e) {
        }
        return name;
    }
    public User getUserDetails(String account) {
        User p = new User();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "select  [User].Name,[User].Email, [User].Address, [User].Phone\n" +
"	from [User] join [Account] on [User].UserID = [Account].UserID \n" +
"                    where [Account].Username = '"+account+"' ";

            rs = stm.executeQuery(strSelect);
            
            while (rs.next()) {
                
                p.setName(rs.getNString(1));
                p.setEmail(rs.getString(2));
                p.setAddress(rs.getNString(3));
                p.setPhone(rs.getString(4));
               
                
                
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return p ;
    }
}
