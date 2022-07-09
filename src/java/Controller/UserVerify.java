package Controller;

import Context.UserDAO;
import Context.SendEmail;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import Model.UserCode;

public class UserVerify extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            //feth form value
            UserDAO ud = new UserDAO();
            String result = "Tài khoản của bạn đã tồn tại, vui lòng thử lại";
            String username = request.getParameter("username");
            String pass = request.getParameter("pass");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String phone = request.getParameter("phone");
            HttpSession session1 = request.getSession();
            session1.setAttribute("username", username);
            session1.setAttribute("pass", pass);
            session1.setAttribute("name", name);
            session1.setAttribute("email", email);
            session1.setAttribute("address", address);
            session1.setAttribute("phone", phone);

            //create instance object of the SendEmail Class
            SendEmail sm = new SendEmail();
            //get the 6-digit code
            String code = sm.getRandom();

            //craete new user using all information
            UserCode user = new UserCode(username, email, code);

            //call the send email method
            boolean test = sm.sendEmail(user);

            //check if the email send successfully
            if (test) {
                if (ud.checkAccount(username)) {
                    request.setAttribute("result", result);
                    request.getRequestDispatcher("Register.jsp").forward(request, response);

                } else {
                    HttpSession session = request.getSession();
                    session.setAttribute("authcode", user);
                    response.sendRedirect("verify.jsp");
                }

            } else {
                response.sendRedirect("Register.jsp");
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
