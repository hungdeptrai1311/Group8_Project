/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import Context.EULADAO;
import Model.EULA;
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
public class EditEULAController extends HttpServlet {
   
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
            out.println("<title>Servlet EditEULAController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditEULAController at " + request.getContextPath () + "</h1>");
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
        EULADAO eulaDB = new EULADAO();
        ArrayList<EULA> eulas = eulaDB.getAllEulas();
        request.setAttribute("eulas", eulas);
        request.getRequestDispatcher("editEULA.jsp").forward(request, response);
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
        EULADAO eulaDB = new EULADAO();
        ArrayList<EULA> eulas = eulaDB.getAllEulas();
        int[] eulas_id = new int[eulas.size()];
        String[] eulas_content = new String[eulas.size()];
        
        for (int i = 1; i <= eulas.size(); i++) {
        eulas_id[i-1] = Integer.parseInt(request.getParameter("eula_id_"+i));
        eulas_content[i-1] = request.getParameter("eula_content_"+i);
        EULA eula = new EULA();
        eula.setEula_id(eulas_id[i-1]);
        eula.setEula_content(eulas_content[i-1]);
        eulaDB.editEULA(eula);  
        }
        
        ArrayList<EULA> eulas_new = eulaDB.getAllEulas();
        request.setAttribute("alert", "Save successful!");
        request.setAttribute("eulas", eulas_new);
        request.getRequestDispatcher("editEULA.jsp").forward(request, response);
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
