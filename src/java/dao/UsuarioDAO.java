package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Usuario;
import utils.Conexao;

public class UsuarioDAO implements DAOGenerica{
    private final Connection conexao;

    public UsuarioDAO() throws SQLException, ClassNotFoundException {
        conexao = Conexao.abrirConexao();
    }

    @Override
    public void cadastrar(Object objeto) throws SQLException {
        String sql = "call cadastrarusuario(?,?,?,?,?,?,?,?,?,?)";
        Usuario usuario = (Usuario) objeto;
        PreparedStatement stmt = null;
        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, usuario.getIdUsuario());
            stmt.setString(2, usuario.getNomePessoa());
            stmt.setString(3, usuario.getDataNascimentoPessoa());
            stmt.setString(4, usuario.getEnderecoPessoa());
            stmt.setString(5, usuario.getCidadePessoa());
            stmt.setString(6, usuario.getEstadoPessoa());
            stmt.setString(7, usuario.getCepPessoa());
            stmt.setString(8, usuario.getCelularPessoa());
            stmt.setString(9, usuario.getEmailPessoa());
            stmt.setString(10, usuario.getSenhaPessoa());

            stmt.execute();
        } catch (SQLException ex) {
            throw new SQLException("Erro ao gravar cliente");
        } finally {
            Conexao.encerrarConexao(conexao, stmt);
        }
    }

    @Override
    public void excluir(int idUsuario) throws SQLException {
        String sql = "delete from usuario where idusuario = ?";
        PreparedStatement stmt = null;
        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, idUsuario);
            stmt.execute();
        } catch (SQLException ex) {
            throw new SQLException("Erro ao excluir usuario");
        } finally {
            Conexao.encerrarConexao(conexao, stmt);
        }
    }
    
    @Override
    public List<Object> listar() throws SQLException {
        String sql = "select * from usuario usu inner join pessoa pe on usu.idusuario = pe.idpessoa";
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Object> lista = new ArrayList<>();
        try {
            stmt = conexao.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Usuario cliente = new Usuario(rs.getInt("idusuario"), rs.getString("nomepessoa"),
                        rs.getString("dataNascimentopessoa"), rs.getString("enderecopessoa"),
                        rs.getString("cidadepessoa"), rs.getString("estadopessoa"), 
                        rs.getString("ceppessoa"), rs.getString("celularpessoa"), 
                        rs.getString("emailpessoa"), rs.getString("senhapessoa"));
                lista.add(cliente);
            }
        } catch (SQLException ex) {
            throw new SQLException("Erro ao listar usuario");
        } finally {
            Conexao.encerrarConexao(conexao, stmt, rs);
        }
        return lista;
    }

    @Override
    public Object consultar(int codigo) throws SQLException {
        String sql = "select * from usuario usu inner join pessoa pe "
                + "on usu.idusuario = pe.idpessoa where pe.idpessoa = ?";
        Usuario usuario = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, codigo);
            rs = stmt.executeQuery();
            while (rs.next()) {
                usuario = new Usuario(rs.getInt("idusuario"), rs.getString("nomepessoa"),
                        rs.getString("dataNascimentopessoa"), rs.getString("enderecopessoa"),
                        rs.getString("cidadepessoa"), rs.getString("estadopessoa"), 
                        rs.getString("ceppessoa"), rs.getString("celularpessoa"), 
                        rs.getString("emailpessoa"), rs.getString("senhapessoa"));
            }
        } catch (SQLException ex) {
            throw new SQLException("Erro ao consultar usuario");
        } finally {
            Conexao.encerrarConexao(conexao, stmt, rs);
        }
        return usuario;
    }
}
