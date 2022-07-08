/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import Context.BrandDAO;
import Context.FilterSearchDAO;
import Model.Brand;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author Loki
 */
public class SearchController extends HttpServlet {
   
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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SearchController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchController at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String name = request.getParameter("search");
        FilterSearchDAO sDB = new FilterSearchDAO();
        ArrayList<Product> products = sDB.searchProductsByName(name);
        BrandDAO bDB = new BrandDAO();
        ArrayList<Brand> brands = bDB.getAllbrands();
        request.setAttribute("brands", brands);
        request.setAttribute("products", products);
        request.getRequestDispatcher("search.jsp").forward(request, response);
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
        String name = request.getParameter("name");
        BrandDAO bDB = new BrandDAO();
        ArrayList<Brand> brands = bDB.getAllbrands();
        int[] brand_id = new int[brands.size()];
        
        for (int i = 1; i <= brands.size(); i++) {
            if(request.getParameter("brand") != null){
                brand_id[i-1] = Integer.parseInt(request.getParameter("brand"));
            }else{
                brand_id[i-1] = 0;
            }
        }
        
        double from = -1;
        if(request.getParameter("from") != ""){
            from = Double.parseDouble(request.getParameter("from"));
        }
        double to = -1;
        if(request.getParameter("to") != ""){
            to = Double.parseDouble(request.getParameter("to"));
        }
        FilterSearchDAO fDB = new FilterSearchDAO();
        ArrayList<Product> products = fDB.filterSearch(name, brand_id, from, to);
        request.setAttribute("brands", brands);
        request.setAttribute("products", products);
        request.getRequestDispatcher("search.jsp").forward(request, response);
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
