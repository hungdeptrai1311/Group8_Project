package Controller;

import Context.UserDAO;
import Model.Account;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import Model.UserCode;

public class VerifyForgot extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            HttpSession session = request.getSession();
            UserCode user= (UserCode) session.getAttribute("authcode");
            
            String code = request.getParameter("authcode");
            
            
            if(code.equals(user.getCode())){

                    
                    request.getRequestDispatcher("NewPass.jsp").forward(request, response);
                    
            }else{
                
                String result = "Bạn đã nhập sai code, vui lòng nhập lại!!"; 
                request.setAttribute("result", result);
                request.getRequestDispatcher("verify.jsp").forward(request, response);
            }
            
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    } 
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}

