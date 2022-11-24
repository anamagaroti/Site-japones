package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Login;
import utils.Conexao;

public class LoginDAO {

    private Connection conexao;

    public LoginDAO() throws SQLException, ClassNotFoundException {
        this.conexao = Conexao.abrirConexao();
    }

    public Login realizarLogin(String emailLogin, String senhaLogin) throws SQLException {
        String sql = "select * from login where emaillogin = ? and senhalogin = ?";
        Login login = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            stmt = conexao.prepareStatement(sql);
            stmt.setString(1, emailLogin);
            stmt.setString(2, senhaLogin);
            rs = stmt.executeQuery();
            while (rs.next()) {
                login = new Login(rs.getString("emaillogin"), rs.getString("senhalogin"));
            }
        } catch (SQLException ex) {
            throw new SQLException("Erro ao logar usuário");
        } finally {
            Conexao.encerrarConexao(conexao, stmt, rs);
        }
        return login;
    }
}
