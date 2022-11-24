package model;

public class Login {
    private String emailLogin;
    private String senhaLogin;

    public Login(String emailLogin, String senhaLogin) {
        this.emailLogin = emailLogin;
        this.senhaLogin = senhaLogin;
    }

    public String getEmailLogin() {
        return emailLogin;
    }

    public void setEmailLogin(String emailLogin) {
        this.emailLogin = emailLogin;
    }

    public String getSenhaLogin() {
        return senhaLogin;
    }

    public void setSenhaLogin(String senhaLogin) {
        this.senhaLogin = senhaLogin;
    } 
}
