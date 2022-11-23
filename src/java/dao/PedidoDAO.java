package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Pedido;
import model.Produto;
import utils.Conexao;

public class PedidoDAO implements DAOGenerica {

    private Connection conexao;

    public PedidoDAO() throws SQLException, ClassNotFoundException {
        conexao = Conexao.abrirConexao();
    }

    @Override
    public void cadastrar(Object objeto) throws SQLException {
        String sql = "call cadastrarPedido(?,?)";
        Pedido pedido = (Pedido) objeto;
        PreparedStatement stmt = null;
        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, pedido.getIdVenda());
            stmt.setInt(2, pedido.getProduto().getIdProduto());

            stmt.execute();
        } catch (SQLException ex) {
            throw new SQLException("Erro ao gravar seu pedido");
        } finally {
            Conexao.encerrarConexao(conexao, stmt);
        }
    }

    @Override
    public List<Object> listar() throws SQLException {
        String sql = "select pe.idvenda, pe.idproduto, pro.nomeproduto, pro.vlrvenda, pro.obsproduto from pedido pe\n"
                + "inner join produto pro on pro.idproduto = pe.idproduto";
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Object> lista = new ArrayList<>();
        try {
            stmt = conexao.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Pedido pedido = new Pedido(rs.getInt("idvenda"),
                        (Produto) new ProdutoDAO().consultar(rs.getInt("idproduto")));
                Produto produto = new Produto();
                produto.setNomeProduto(rs.getString("nomeproduto"));
                produto.setVlrVenda(rs.getDouble("vlrvenda"));
                produto.setObsProduto(rs.getString("obsproduto"));
                lista.add(pedido);
            }
        } catch (SQLException ex) {
            throw new SQLException("Erro ao listar pedidos");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            Conexao.encerrarConexao(conexao, stmt, rs);
        }
        return lista;
    }

    public void excluirLista() throws SQLException {
        String sql = "delete from pedido";
        PreparedStatement stmt = null;
        try {
            stmt = conexao.prepareStatement(sql);
            stmt.execute();
        } catch (SQLException ex) {
            throw new SQLException("Erro ao excluir produto");
        } finally {
            Conexao.encerrarConexao(conexao, stmt);
        }
    }

    @Override
    public Object consultar(int codigo) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void excluir(int codigo) throws SQLException {
        String sql = "delete from pedido where idvenda = ?";
        PreparedStatement stmt = null;
        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, codigo);
            stmt.execute();
        } catch (SQLException ex) {
            throw new SQLException("Erro ao excluir produto");
        } finally {
            Conexao.encerrarConexao(conexao, stmt);
        }
    }
}
