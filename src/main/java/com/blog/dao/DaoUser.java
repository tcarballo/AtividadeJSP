package com.blog.dao;

import com.blog.entidades.User;
import com.blog.utils.Conexao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

public class DaoUser {
    private static Connection con = Conexao.conectar();
    private static ResultSet result = null;

    public static void addUser(User user) {
        if (con != null) {
            String sql = "insert into user (user_name, email, senha, id_perfil)\n" +
                    "values (?,?,?,?)";
            PreparedStatement stm = null;
            try {
                stm = con.prepareStatement(sql);
                stm.setString(1, user.getUserName().toLowerCase());
                stm.setString(2, user.getEmail());
                stm.setString(3, user.getSenha());
                stm.setInt(4, 2);
                stm.execute();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

        }
    }

    public static Boolean validaUser(User user) {
        System.out.println(user.getEmail());
        if (con != null) {
            int row = 0;
            String sql = "select count(*) from user where email = ?";
            PreparedStatement stm = null;
            try {
                stm = con.prepareStatement(sql);
                stm.setString(1, user.getEmail().toLowerCase());
                result = stm.executeQuery();
                result.next();
                if (result.getInt(1)== 0) {
                    return true;
                }
                return false;
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

        }
        return false;
    }

    public static Boolean autenticaUser(User user) {
        if (con != null) {
            String sql = "select * from user where email like ?";
            PreparedStatement stm = null;
            try {
                stm = con.prepareStatement(sql);
                stm.setString(1, user.getEmail());
                result = stm.executeQuery();
                result.next();
                if (user.getSenha().equals(result.getString("senha"))) {
                    user.setIdPerfil(result.getInt("id_perfil"));
                    user.setUserName(result.getString("user_name"));
                    user.setIdUser(result.getInt("id_user"));
                    return true;
                }
                return false;
            } catch (SQLException e) {
                throw new RuntimeException();
            }

        }
        return false;
    }


}
