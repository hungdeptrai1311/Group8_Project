/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Context.CartDAO;
import Context.ProductDAO;
import Context.SizeDAO;
import Context.UserDAO;
import Model.Cart;
import Model.User;
import com.oracle.wls.shaded.org.apache.bcel.generic.AALOAD;
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
 * @author vuman
 */
public class ProductController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDAO ud = new UserDAO();
        SizeDAO sd = new SizeDAO();
        ProductDAO pd = new ProductDAO();
        CartDAO cd = new CartDAO();
        User u = new User();
        HttpSession session = request.getSession();
        ArrayList<Cart> list = new ArrayList<Cart>();

        int productId = Integer.parseInt(request.getParameter("productid"));
        int brandId = Integer.parseInt(request.getParameter("brandid"));
        if (session.getAttribute("account") != null) {
            String username = session.getAttribute("account").toString();
            u = ud.getUserInforByUsername(username);
            list = cd.getCartListByUserId(u.getId());
        }

        if (list != null) {
            request.setAttribute("cart", cd.getCartListByUserId(u.getId()));
        }
        request.setAttribute("size", sd.getAllSizeByProductId(productId));
        request.setAttribute("product", pd.getProductByBrandIdAndProductId(brandId, productId));
        request.getRequestDispatcher("product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.doPost(request, response);
    }

}
