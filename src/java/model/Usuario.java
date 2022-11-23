package model;

public class Usuario extends Pessoa{
    private int idUsuario;

    public Usuario(int idUsuario, String nomePessoa, String dataNascimentoPessoa, String enderecoPessoa, String cidadePessoa, String estadoPessoa, String cepPessoa, String celularPessoa, String emailPessoa, String senhaPessoa) {
        super(nomePessoa, dataNascimentoPessoa, enderecoPessoa, cidadePessoa, estadoPessoa, cepPessoa, celularPessoa, emailPessoa, senhaPessoa);
        this.idUsuario = idUsuario;
    }

    public Usuario() {
        super(null, null, null, null, null, null, null, null, null);
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
}
