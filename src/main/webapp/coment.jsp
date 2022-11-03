<%@page contentType="text/html" pageEncoding="UTF-8" %>
        <%@ page import="com.blog.entidades.Coment" %>
        <%@ page import="com.blog.dao.DaoComent" %>

<%

    int idComent = Integer.parseInt(request.getParameter("idcoment"));
    String idPost = request.getParameter("id");
    int status = Integer.parseInt(request.getParameter("status")) ;    
    if(status == 1){
        DaoComent.updateComent(idComent);
    }
    if(status == 0){
        DaoComent.deleteComent(idComent);
    }
    
    response.sendRedirect("posts.jsp?id="+ idPost);

%>
    
