/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author angel
 */
public class ServletImc extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static DecimalFormat df2 = new DecimalFormat("#.##");
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletImc</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletImc at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>"); */
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
        //processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        try {
            calcularIMC(request, response);
        } catch (NumberFormatException  ex) {
            throw new ServletException(ex);
        }

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

    private void calcularIMC(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double peso = Double.parseDouble(request.getParameter("peso"));
        double altura = Double.parseDouble(request.getParameter("altura"));
   
        double alturaEnMetros = altura * altura;
        double imc = peso / alturaEnMetros;
        String clasificacion = clasificacionIMC(imc);
        //PrintWriter out = response.getWriter();
        //out.println(clasificacion);
        request.setAttribute("imc", df2.format(imc));
        request.setAttribute("clasificacion", clasificacion);

        RequestDispatcher dispatcher = request.getRequestDispatcher("resultado.jsp");
        dispatcher.forward(request, response);
    }

    private String clasificacionIMC(double imc) {
        
        String clasificacion = "";
        if (imc < 16.0) {
            clasificacion = "Infrapeso: Delgadez Severa";
        }

        if (imc > 16.0 && imc < 16.99) {
            clasificacion = "Infrapeso: Delgadez Moderada";
        }

        if (imc > 17.0 && imc < 18.49) {
            clasificacion = "Infrapeso: Delgadez Aceptable";
        }

        if (imc > 18.50 && imc < 24.99) {
            clasificacion = "Peso normal";
        }

        if (imc > 25.0 && imc < 29.99) {
            clasificacion = "Sobrepeso";
        }

        if (imc > 30.0 && imc < 34.99) {
            clasificacion = "Obeso Tipo I";
        }

        if (imc > 35.0 && imc < 40.0) {
            clasificacion = "Obeso Tipo II";
        }

        if (imc > 40.0) {
            clasificacion = "Obeso Tipo III";
        }
        return clasificacion;
    }

}
