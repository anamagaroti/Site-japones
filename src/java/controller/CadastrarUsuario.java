package controller;

import dao.UsuarioDAO;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Usuario;

@WebServlet(name = "CadastrarUsuario", urlPatterns = {"/CadastrarUsuario"})
public class CadastrarUsuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        try {
            int idUsuario = request.getParameter("idUsuario").isEmpty()
                    ? 0 : Integer.parseInt(request.getParameter("idUsuario"));
            String nomePessoa = request.getParameter("nomePessoa");
            String dataNascimentoPessoa = request.getParameter("dataNascimentoPessoa");
            String enderecoPessoa = request.getParameter("enderecoPessoa");
            String cidadePessoa = request.getParameter("cidadePessoa");
            String estadoPessoa = request.getParameter("estadoPessoa");
            String cepPessoa = request.getParameter("cepPessoa");
            String celularPessoa = request.getParameter("celularPessoa");
            String emailPessoa = request.getParameter("emailPessoa");
            String senhaPessoa = request.getParameter("senhaPessoa");

            Usuario usuario = new Usuario(idUsuario ,nomePessoa, dataNascimentoPessoa, enderecoPessoa, 
                    cidadePessoa, estadoPessoa, cepPessoa, celularPessoa, emailPessoa,
                    senhaPessoa
            );

            UsuarioDAO usuarioDAO = new UsuarioDAO();

            usuarioDAO.cadastrar(usuario);
            request.setAttribute("mensagem", "Gravado com sucesso!");

        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensagem", ex.getMessage());
        }

        request.getRequestDispatcher("index.jsp").forward(request, response);
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
