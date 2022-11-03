package com.blog.dao;

import com.blog.entidades.Post;
import com.blog.utils.Conexao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DaoPost {
    private static Connection con = Conexao.conectar();
    private static ResultSet result = null;

    public static List<Post> getPosts() {
        List<Post> posts = new ArrayList<Post>();
        if (con != null) {
            String sql = "select * from postagens order by data_postagem desc limit 10 ";
            try {
                PreparedStatement stm = null;
                stm = con.prepareStatement(sql);
                result = stm.executeQuery();
                while (result.next()) {
                    int id = result.getInt("id_postagem");
                    String titulo = result.getString("titulo");
                    String post = result.getString("postagem");

                    Post p = new Post(id, titulo, post, post.substring(0, 15));

                    posts.add(p);
                }

            } catch (SQLException e) {
                throw new RuntimeException();
            }

        }
        return posts;

    }

    public static Post getPosts(int id) {
        Post p = null;
        if (con != null) {
            String sql = "select * from postagens where id_postagem = ?";
            try {
                PreparedStatement stm = null;
                stm = con.prepareStatement(sql);
                stm.setInt(1, id);
                result = stm.executeQuery();
                result.next();
                String titulo = result.getString("titulo");
                String post = result.getString("postagem");
                p = new Post(id, titulo, post, post.substring(0, 15));

            } catch (SQLException e) {
                throw new RuntimeException();
            }

        }
        return p;

    }

    public static void deletePost(int idPost) {
        Connection con = Conexao.conectar();
        if (con != null) {
            String sql = "delete from comentarios where postagem_id = ?";
            String sql2 = "delete from postagens where id_postagem = ?";
            try {
                PreparedStatement stm = null;
                stm = con.prepareStatement(sql);
                stm.setInt(1, idPost);
                stm.execute();
                stm.close();
                stm = con.prepareStatement(sql2);
                stm.setInt(1, idPost);
                stm.execute();

            } catch (SQLException e) {
                throw new RuntimeException();
            }

        }

    }
}
