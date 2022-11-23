package model;

public class Pessoa {
    private int idPessoa;
    private String nomePessoa;
    private String dataNascimentoPessoa;
    private String enderecoPessoa;
    private String cidadePessoa;
    private String estadoPessoa;
    private String cepPessoa;
    private String celularPessoa;
    private String emailPessoa;
    private String senhaPessoa;

    public Pessoa(String nomePessoa, String dataNascimentoPessoa, String enderecoPessoa, String cidadePessoa, String estadoPessoa, String cepPessoa, String celularPessoa, String emailPessoa, String senhaPessoa) {
        this.nomePessoa = nomePessoa;
        this.dataNascimentoPessoa = dataNascimentoPessoa;
        this.enderecoPessoa = enderecoPessoa;
        this.cidadePessoa = cidadePessoa;
        this.estadoPessoa = estadoPessoa;
        this.cepPessoa = cepPessoa;
        this.celularPessoa = celularPessoa;
        this.emailPessoa = emailPessoa;
        this.senhaPessoa = senhaPessoa;
    }

    public int getIdPessoa() {
        return idPessoa;
    }

    public void setIdPessoa(int idPessoa) {
        this.idPessoa = idPessoa;
    }

    public String getNomePessoa() {
        return nomePessoa;
    }

    public void setNomePessoa(String nomePessoa) {
        this.nomePessoa = nomePessoa;
    }

    public String getDataNascimentoPessoa() {
        return dataNascimentoPessoa;
    }

    public void setDataNascimentoPessoa(String dataNascimentoPessoa) {
        this.dataNascimentoPessoa = dataNascimentoPessoa;
    }

    public String getEnderecoPessoa() {
        return enderecoPessoa;
    }

    public void setEnderecoPessoa(String enderecoPessoa) {
        this.enderecoPessoa = enderecoPessoa;
    }

    public String getCidadePessoa() {
        return cidadePessoa;
    }

    public void setCidadePessoa(String cidadePessoa) {
        this.cidadePessoa = cidadePessoa;
    }

    public String getEstadoPessoa() {
        return estadoPessoa;
    }

    public void setEstadoPessoa(String estadoPessoa) {
        this.estadoPessoa = estadoPessoa;
    }

    public String getCepPessoa() {
        return cepPessoa;
    }

    public void setCepPessoa(String cepPessoa) {
        this.cepPessoa = cepPessoa;
    }

    public String getCelularPessoa() {
        return celularPessoa;
    }

    public void setCelularPessoa(String celularPessoa) {
        this.celularPessoa = celularPessoa;
    }

    public String getEmailPessoa() {
        return emailPessoa;
    }

    public void setEmailPessoa(String emailPessoa) {
        this.emailPessoa = emailPessoa;
    }

    public String getSenhaPessoa() {
        return senhaPessoa;
    }

    public void setSenhaPessoa(String senhaPessoa) {
        this.senhaPessoa = senhaPessoa;
    }
}
