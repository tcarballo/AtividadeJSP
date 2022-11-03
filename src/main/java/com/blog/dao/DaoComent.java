package com.blog.dao;

import com.blog.entidades.Coment;

import com.blog.utils.Conexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoComent {

    public static List<Coment> getComent(int idPost) {
        Connection con1 = Conexao.conectar();
        ResultSet result1 = null;
        List<Coment> coments = new ArrayList<Coment>();
        if (con1 != null) {
            String sql = "select * from comentarios left join user on comentarios.user_id = user.id_user where comentarios.postagem_id = ?";
            try {
                PreparedStatement stm1 = null;
                stm1 = con1.prepareStatement(sql);
                stm1.setInt(1, idPost);
                result1 = stm1.executeQuery();
                while (result1.next()) {
                    String coment = result1.getString("comentario");
                    String userName = result1.getString("user_Name");
                    int status = result1.getInt("status");
                    int comentId = result1.getInt("id_comentarios");
                    Coment c = new Coment(comentId,idPost,userName,coment, status);
                    coments.add(c);
                }
                con1.close();

            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }

        }

        return coments;
    }



    public static void setComent(Coment coment){
        Connection con = Conexao.conectar();
        if (con != null) {
            String sql = "insert into comentarios (postagem_id,user_id,comentario,status) values (?,?,?,0)";
            try {
                PreparedStatement stm = null;
                stm = con.prepareStatement(sql);
                stm.setInt(1, coment.getIdPostagem());
                stm.setInt(2, coment.getIdUser());
                stm.setString(3, coment.getComent());
                stm.execute();
                con.close();
            } catch (SQLException e) {
                throw new RuntimeException();
            }

        }

    }

    public static void updateComent (int idComent){

        Connection con = Conexao.conectar();
        if (con != null) {
            String sql = "update comentarios set status = 1 where id_comentarios = ?";
            try {
                PreparedStatement stm = null;
                stm = con.prepareStatement(sql);
                stm.setInt(1, idComent);
                stm.execute();
                con.close();

            } catch (SQLException e) {
                throw new RuntimeException();
            }

        }

    }
    public static void deleteComent (int idComent){

        Connection con = Conexao.conectar();
        if (con != null) {
            String sql = "delete from comentarios where id_comentarios = ?";
            try {
                PreparedStatement stm = null;
                stm = con.prepareStatement(sql);
                stm.setInt(1, idComent);
                stm.execute();
                con.close();

            } catch (SQLException e) {
                throw new RuntimeException();
            }

        }



    }



}
