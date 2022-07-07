/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import Context.ProductDAO;
import Context.SizeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author vuman
 */
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SizeDAO sd = new SizeDAO();
        ProductDAO pd = new ProductDAO();
        int productId = Integer.parseInt(request.getParameter("productid"));
        int brandId = Integer.parseInt(request.getParameter("brandid"));
        request.setAttribute("size", sd.getAllSizeByProductId(productId));
        request.setAttribute("product", pd.getProductByBrandIdAndProductId(brandId, productId));
        request.getRequestDispatcher("product.jsp").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.doPost(request, response);
    }

}
