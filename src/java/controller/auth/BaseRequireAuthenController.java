/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.auth;

import entity.Account;
import entity.Feature;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author doan7
 */

public abstract class  BaseRequireAuthenController extends HttpServlet {
            public boolean isAuthen(HttpServletRequest request){
                Account account = (Account)request.getSession().getAttribute("account");
                if(account==null){
                    return false;
                }
                else{
                    String url = request.getServletPath();
                    for (Feature feature : account.getFeatures()) {
                        if(feature.getUrl().equals(url)){
                            return true;
                        }
                    }
                   
                }
                return false;
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
        if(isAuthen(request)){
            processGet(request, response);
        }
        else{
            response.getWriter().println("access denied!");
        }
    }
    protected abstract void processGet(HttpServletRequest request, HttpServletResponse response);
    protected abstract void processPost(HttpServletRequest request, HttpServletResponse response);
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         if(isAuthen(request)){
            processPost(request, response);
        }
        else{
            response.getWriter().println("access denied!");
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

}
