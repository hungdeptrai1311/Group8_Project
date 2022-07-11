/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Context.BrandDAO;
import Context.CartDAO;
import Context.ProductDAO;
import Context.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author vuman
 */
public class CheckoutController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDAO ud = new UserDAO();
        CartDAO cd = new CartDAO();
        ProductDAO pd = new ProductDAO();
        BrandDAO bd = new BrandDAO();

        HttpSession session = request.getSession();

        String username = session.getAttribute("account").toString();
        int userId = ud.getUserInforByUsername(username).getId();

        request.setAttribute("brandList", bd.getAllBrands());
        request.setAttribute("productList", pd.getAllproducts());
        request.setAttribute("cart", cd.getCartListByUserId(userId));
        request.setAttribute("infor", ud.getUserInforByUsername(username));
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDAO ud = new UserDAO();
        CartDAO cd = new CartDAO();

        HttpSession session = request.getSession();

        String username = session.getAttribute("account").toString();
        int userId = ud.getUserInforByUsername(username).getId();

        int productId = Integer.parseInt(request.getParameter("productId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String size = request.getParameter("size");
        cd.addCart(userId, productId, quantity, size);

        response.sendRedirect("checkout");
    }

}
