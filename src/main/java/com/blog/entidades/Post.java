package com.blog.entidades;

public class Post {
    private int idPost;
    private String tituloPostagem;
    private String postagem;

    private String intro;

    public Post(int idPost, String tituloPostagem, String postagem, String intro) {
        this.idPost = idPost;
        this.tituloPostagem = tituloPostagem;
        this.postagem = postagem;
        this.intro = intro;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public int getIdPost() {
        return idPost;
    }

    public void setIdPost(int idPost) {
        this.idPost = idPost;
    }

    public String getTituloPostagem() {
        return tituloPostagem;
    }

    public void setTituloPostagem(String tituloPostagem) {
        this.tituloPostagem = tituloPostagem;
    }

    public String getPostagem() {
        return postagem;
    }

    public void setPostagem(String postagem) {
        this.postagem = postagem;
    }
}
