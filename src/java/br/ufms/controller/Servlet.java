/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufms.controller;

import br.ufms.model.Noticias;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author igor
 */
@WebServlet(name = "Servlet", urlPatterns = {"/Servlet"})
public class Servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
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
            out.println("<title>Servlet Servlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Servlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        PrintWriter out = response.getWriter();
        //dados do BD
        String url = "jdbc:postgresql://localhost:5432/Noticiario";
        String usuario = "postgres";
        String senhadb = "123";

        try {
            //Faz conexão com BD
            Class.forName("org.postgresql.Driver");
            Connection conexao = DriverManager.getConnection(url, usuario, senhadb);
            Statement stm = conexao.createStatement();
            String login = request.getParameter("login");
            String senha = request.getParameter("senha");
            String acao = request.getParameter("acao");
            //lista noticias
            
            /*if(acao.equals("listar")){
            ResultSet rs = stm.executeQuery("SELECT * FROM noticia");
            List<Noticias> lista = new ArrayList<>();
            while (rs.next()) {
                Noticias noticia = new Noticias();
                noticia.setId_noticia(rs.getInt("id_noticia"));
                noticia.setTitulo(rs.getString("titulo"));
                noticia.setImagem(rs.getString("imagem"));
                noticia.setCategoria(rs.getString("categoria"));
                noticia.setId_usuario(rs.getInt("id_usuario"));
                lista.add(noticia);
            }
            request.getSession().setAttribute("lista", lista);
            response.sendRedirect("index.jsp");
            }*/
            
            //verifica senha e login no BD
            if(acao.equals("acesso")){
            ResultSet res = stm.executeQuery("SELECT * FROM usuario WHERE login='" + login + "' AND senha='" + senha + "'");

            if (res.next()) {
                //Criando sessao
                request.getSession().setAttribute("login", login);
                request.getSession().setAttribute("senha", senha);

                //Criando Cookies
                Cookie cookieId_usuario = new Cookie("id_user", res.getString("id_usuario"));
                response.addCookie(cookieId_usuario);
              
                response.sendRedirect("confirma sessao.jsp");

            } else {
                request.setAttribute("erro", "Login ou senha incorretos");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
            }
        } catch (ClassNotFoundException ex) {
            out.println("problema 1");
            Logger.getLogger(Servlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            out.println("problema 2");
            Logger.getLogger(Servlet.class.getName()).log(Level.SEVERE, null, ex);
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
