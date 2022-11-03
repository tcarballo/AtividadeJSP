package com.blog.entidades;

public class Coment {
    private int comentID;
    private int id;
    private int idUser;
    private int idPostagem;
    private String coment;
    private String userName;

    private int status;

    public int getComentID() {
        return comentID;
    }

    public void setComentID(int comentID) {
        this.comentID = comentID;
    }

    public Coment(int comentID, int idPost, String userName, String coment, int status) {
        this.idPostagem = idPostagem;
        this.coment = coment;
        this.userName = userName;
        this.comentID = comentID;
        this.status = status;
    }

    public Coment(int idPostagem, int idUser, String coment, int status) {
        this.idUser = idUser;
        this.idPostagem = idPostagem;
        this.coment = coment;
        this.status = status;
    }
    public Coment(int idPostagem, int idUser, String coment) {
        this.idUser = idUser;
        this.idPostagem = idPostagem;
        this.coment = coment;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public int getIdPostagem() {
        return idPostagem;
    }

    public void setIdPostagem(int idPostagem) {
        this.idPostagem = idPostagem;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getComent() {
        return coment;
    }

    public void setComent(String coment) {
        this.coment = coment;
    }
}
