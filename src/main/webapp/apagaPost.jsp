<%@page contentType="text/html" pageEncoding="UTF-8" %>
        <%@ page import="com.blog.entidades.Coment" %>
        <%@ page import="com.blog.dao.DaoComent" %>
        <%@ page import="com.blog.entidades.Post" %>
    <%@ page import="com.blog.dao.DaoPost" %>

<%

    int idPost=Integer.parseInt(request.getParameter("id"));

    DaoPost.deletePost(idPost);
    
    
    
    response.sendRedirect("index.jsp");

%>
    
