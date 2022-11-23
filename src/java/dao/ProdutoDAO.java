package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Produto;
import model.Usuario;
import utils.Conexao;

public class ProdutoDAO implements DAOGenerica {

    private Connection conexao;

    public ProdutoDAO() throws SQLException, ClassNotFoundException {
        conexao = Conexao.abrirConexao();
    }

    @Override
    public void cadastrar(Object objeto) throws SQLException {
        String sql = "call cadastrarProduto(?,?,?,?,?)";
        Produto produto = (Produto) objeto;
        PreparedStatement stmt = null;
        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, produto.getIdProduto());
            stmt.setString(2, produto.getNomeProduto());
            stmt.setDouble(3, produto.getVlrVenda());
            stmt.setLong(4, produto.getCodigoBarra());
            stmt.setString(5, produto.getObsProduto());
            stmt.execute();
        } catch (SQLException ex) {
            throw new SQLException("Erro ao gravar produto");
        } finally {
            Conexao.encerrarConexao(conexao, stmt);
        }
    }

    @Override
    public List<Object> listar() throws SQLException {
        String sql = "select * from produto";
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Object> lista = new ArrayList<>();
        try {
            stmt = conexao.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Produto produto = new Produto(rs.getInt("idproduto"), rs.getString("nomeproduto"),
                        rs.getDouble("vlrvenda"), rs.getString("obsproduto"));
                lista.add(produto);
            }
        } catch (SQLException ex) {
            throw new SQLException("Erro ao listar paciente");
        } finally {
            Conexao.encerrarConexao(conexao, stmt, rs);
        }
        return lista;
    }

    @Override
    public void excluir(int codigo) throws SQLException {
        String sql = "delete from produto where idproduto = ?";
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

    @Override
    public Object consultar(int codigo) throws SQLException {
        String sql = "select * from produto where idproduto = ?";
        Produto produto = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, codigo);
            rs = stmt.executeQuery();
            while (rs.next()) {
                produto = new Produto(rs.getInt("idproduto"), rs.getString("nomeproduto"),
                        rs.getDouble("vlrvenda"), rs.getString("obsproduto"));
            }
        } catch (SQLException ex) {
            throw new SQLException("Erro ao vizualizar produto");
        } finally {
            Conexao.encerrarConexao(conexao, stmt, rs);
        }
        return produto;
    }
}
