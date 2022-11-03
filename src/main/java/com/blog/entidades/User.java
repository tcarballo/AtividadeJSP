package com.blog.entidades;

public class User {
    private int idUser;
    private String userName;
    private String email;
    private String senha;
    private int idPerfil;

    public User(String userName, String email, String senha) {
        this.userName = userName;
        this.email = email;
        this.senha = senha;
    }

    public User(String email, String senha) {
        this.email = email;
        this.senha = senha;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public int getIdPerfil() {
        return idPerfil;
    }

    public void setIdPerfil(int idPerfil) {
        this.idPerfil = idPerfil;
    }
}
