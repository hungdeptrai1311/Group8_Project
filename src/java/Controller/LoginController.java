///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
// */
//
//package Controller;
//
//
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//import java.util.ArrayList;
//
///**
// *
// * @author baqua
// */
//public class LoginController extends HttpServlet {
//   
//    /** 
//     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//    throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            // Nhận thông tin từ View
//            String account =request.getParameter("account");
//            String pass =request.getParameter("pass");
//            // nhờ model xử lý 
//            UserDAO u = new UserDAO();
//            
//            if(u.checlogin(account, pass)){
//                //login thanh cong
//                ArrayList<User> list =new ArrayList<User>();
//                list =u.getAllUser();
//                String name = u.getNameByAccount(account);
//                // luuw account vao session
//                HttpSession session = request.getSession();
//                session.setAttribute("account", account);
//                request.setAttribute("name", name);
//                request.setAttribute("list", list);
//               // luuw account vao session
//                
//                request.getRequestDispatcher("ListProduct.jsp").forward(request, response);
//                
//                
//            }
//            else{
//                if(u.checkAccount(account)){ // account ton tai nhung pass sai 
//                    request.getRequestDispatcher("ForgetPass.jsp").forward(request, response);
//                  
//                }
//                else
//                //that bai
//                request.getRequestDispatcher("index.jsp").forward(request, response);
//            }
//            
//        }
//    } 
//
//    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
//    /** 
//     * Handles the HTTP <code>GET</code> method.
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//    throws ServletException, IOException {
//        processRequest(request, response);
//    } 
//
//    /** 
//     * Handles the HTTP <code>POST</code> method.
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//    throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /** 
//     * Returns a short description of the servlet.
//     * @return a String containing servlet description
//     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}
//
