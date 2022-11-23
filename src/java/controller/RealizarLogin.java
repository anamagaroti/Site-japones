package controller;

import dao.LoginDAO;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Login;

@WebServlet(name = "RealizarLogin", urlPatterns = {"/RealizarLogin"})
public class RealizarLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         try {
            String emailLogin = request.getParameter("emailLogin");
            String senhaLogin = request.getParameter("senhaLogin");
            LoginDAO loginDAO = new LoginDAO();
            Login login = loginDAO.realizarLogin(emailLogin, senhaLogin);
            if(login != null) {
                HttpSession sessao = request.getSession(true);
                sessao.setAttribute("login", login);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } else {
                request.setAttribute("mensagem", "Credenciais de acesso inválidas!");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } catch(SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensagem", ex.getMessage());
            request.getRequestDispatcher("index.jsp").forward(request, response);
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
