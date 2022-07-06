
package Controller;

import Context.AccountDAO;
import Model.User;

import Context.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author baqua
 */
public class LoginController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            // Nhận thông tin từ View
            String account =request.getParameter("account");
            String pass =request.getParameter("pass");
            // nhờ model xử lý 
            String result = "";
            UserDAO u = new UserDAO();
            AccountDAO a = new AccountDAO();
            if(u.checlogin(account, pass)){
                //login thanh cong
                
                ArrayList<User> list =new ArrayList<User>();
                String name = u.getNameByAccount(account);
                
                if (Integer.parseInt(a.getRoleByUsername(account))== 2){
                    HttpSession session = request.getSession();
                    session.setAttribute("account", account);
                    session.setAttribute("name", name);
                
                request.getRequestDispatcher("home.jsp").forward(request, response);
                }
                else {
                    HttpSession session = request.getSession();
                session.setAttribute("account", account);
                session.setAttribute("name", name);
                
                request.getRequestDispatcher("newjsp.jsp").forward(request, response);
                }
                
                
                
            }
            else{
                if(u.checkAccount(account)){ // account ton tai nhung pass sai 
                    result = "Wrong password, please try again!";
                    request.setAttribute("result", result);
                    request.getRequestDispatcher("Login.jsp").forward(request, response);
                    //request.getRequestDispatcher("ForgetPass.jsp").forward(request, response);
                  
                }
                else{
                //that bai
                result = "Login Failed, your account does not exist!!";
                request.setAttribute("result", result);
                
                request.getRequestDispatcher("Login.jsp").forward(request, response);
                }
                
           }
            
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
