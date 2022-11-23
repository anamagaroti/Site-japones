package controller;

import dao.PedidoDAO;
import java.io.IOException;
import static java.lang.Integer.parseInt;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Pedido;
import model.Produto;

@WebServlet(name = "CadastrarPedido", urlPatterns = {"/CadastrarPedido"})
public class CadastrarPedido extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            int idPedido = request.getParameter("idPedido").isEmpty()
                    ? 0 : Integer.parseInt(request.getParameter("idPedido"));
            int idProduto = parseInt(request.getParameter("idProduto"));    
            
            Pedido pedido = new Pedido(idPedido, new Produto(idProduto));

            PedidoDAO pedidoDAO = new PedidoDAO();

            pedidoDAO.cadastrar(pedido);
            request.setAttribute("mensagem", "Gravado com sucesso!");

        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensagem", ex.getMessage());
        }

        request.getRequestDispatcher("ListarProduto").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
