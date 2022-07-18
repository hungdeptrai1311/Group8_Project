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
    
    public void UpdatePass2(String username, String pass) {
        try {
            Statement stmt = cnn.createStatement();
            String sql = "UPDATE Account SET Password = '"+pass+"' WHERE Username =  '"+username+"' and Password = (select [Account].Password from Account where Account.Username = '"+username+"')";
            stmt.executeUpdate(sql);
            System.out.println("Update pass success");
        } catch (SQLException e) {
            e.printStackTrace();
        }
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
    
    public void UpdateUser(String username, String name, String email, String address, String phone) {
        try {
            Statement stmt = cnn.createStatement();
            String sql = "delete from [User] where [User].UserID = (select [User].UserID from [User] join [Account] on [User].UserID = [Account].UserID \n" +
"WHERE Account.Username = '"+username+"')\n" +
"INSERT INTO [User]([UserID], [Name], [Email], [Address], [Phone]) \n" +
"VALUES ((SELECT [UserID] FROM [Account] WHERE [Username] = '"+username+"'), N'"+name+"', '"+email+"', N'"+address+"', '"+phone+"')";
            stmt.executeUpdate(sql);
            System.out.println("Update User success");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public ArrayList<User> getAllUser() {
        ArrayList<User> list = new ArrayList<User>();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "SELECT [Account].Username, [User].Name,[User].Email,  [User].Address, [User].Phone \n" +
"	From [User] join [Account] on [User].UserID = [Account].UserID ";
            
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                String username =rs.getString(1);
                String name =rs.getString(2);
                String email =rs.getString(3);
                String address =rs.getString(4);
                String price = rs.getString(5);
                list.add(new User(username, name, email, address, price));
                
                
            }

        } catch (Exception e) {
            System.out.println("Login Error:" + e.getMessage());
        }
        return list;
    }

    public User getUserInforByUsername(String username) {
        User u = new User();
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "SELECT [User].UserID, [User].Name, [User].Email, [User].Address, [User].Phone FROM [User], [Account] WHERE [User].UserId = [Account].UserID AND [Account].Username = '" + username + "'";

            rs = stm.executeQuery(strSelect);

            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getNString(2);
                String email = rs.getNString(3);
                String address = rs.getNString(4);
                String phone = rs.getString(5);

                u = new User(id, name, email, address, phone);
            }
        } catch (Exception e) {
        }
        return u;
    }
     public void deleteUser(String username){
        try {
            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            stm.executeUpdate("delete from [User] where [User].UserID = (select [User].UserID \n" +
"	FROM [User], [Account]\n" +
"	WHERE [User].UserId = [Account].UserID AND [Account].Username = '"+username+"')\n" +
"	delete from [Account] where Account.Username = '"+username+"'");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
