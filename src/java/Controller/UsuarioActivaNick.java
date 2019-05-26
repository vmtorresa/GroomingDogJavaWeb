/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author MANUEL
 */
public class UsuarioActivaNick extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String activoInactivo = request.getParameter("UsuarioActivoInactivo");
        String nick = request.getParameter("nickUsuario");
        String password = request.getParameter("passwordUsuario");
        String fkRolPersona = request.getParameter("FkRolPersona");
        String fkPersonaId = request.getParameter("FkPersonaId");
        
        // Para usuario NO Administrador, se requiere capturar datos de idRol e identifPersona, respectivamente.
        
        //String fkRolPersona = request.getParameter("fkUsuarioRol");
        //String fkPersonaId = request.getParameter("fkPersonaId");
        
        Consultas co = new Consultas();
        if(co.UsuarioActivaNick(activoInactivo, nick, password, fkRolPersona, fkPersonaId)){
        //if(co.UsuarioActivaNick(activoInactivo, nick, password)){
           HttpSession objetosesion=request.getSession(true);
           
            response.sendRedirect("desparasitacion-POR-CONSTRUIR.jsp");
        }else{
           response.sendRedirect("usuarioNick.jsp");
       }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
