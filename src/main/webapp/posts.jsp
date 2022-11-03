<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ page import="com.blog.entidades.Post" %>
        <%@ page import="com.blog.dao.DaoPost" %>
        <%@ page import="com.blog.entidades.Coment" %>
        <%@ page import="com.blog.dao.DaoComent" %>
            <%@ page import="java.util.List" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Document</title>
                    <link rel="stylesheet" href="./style/style.css">
                    <!-- CSS only -->
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
                        rel="stylesheet"
                        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
                        crossorigin="anonymous">
                    <script src="./script.js"></script>
                   
                </head>

                <body onload="verifyUser()">

                        


                    <ul>
                        <li><a class="active" href="index.jsp">Home</a></li>
                        
                        <li style="float:right; display: block;" id="login"><a href="login.jsp">Login</a></li>
                        <li style="float:right; display: none;" id="logout"><a href="" onclick="logout()">Logout <br><span style="float:right;" id="UserName"></span></a>
                        </li>
                    </ul>
                    
                    <div class="container">
                    <div class="box">
                        <div class="post">
                            <form method="GET" >
                            <% 
                                int idPost=Integer.parseInt(request.getParameter("id")); 
                                out.write("<button hidden style='float:right;' class='Ncoment apagar'><a href='apagaPost.jsp?id=" + idPost +"'>Apagar Post</a></button>");                                
                                Post p=DaoPost.getPosts(idPost);
                                out.write("<h2>"+p.getTituloPostagem()+"</h2>");
                                out.write("<p>" + p.getPostagem() + "</p>");

                                %>
                            </form>
                        </div>
                        <h3>Comentários</h3>

                        
                        <%
                         
                            List <Coment> coments = DaoComent.getComent(idPost);                      
     
                                for(Coment c : coments ){
                                        
                                    if(c.getStatus() == 1){
                                        out.write("<form method='GET'>");                                        
                                        out.write("<div class='coment'>");
                                        out.write("<h5>"+c.getUserName()+" diz:</h5>");
                                        out.write("<p>"+c.getComent());
                                        out.write("<button hidden style='float:right;' class='Ncoment apagar'><a href='coment.jsp?id="+ idPost + "&idcoment=" + c.getComentID() + "&status=0'>Apagar</a></button> ");                                         
                                        out.write("</p>");
                                        out.write("</div>");
                                        out.write("</form>");
                                    }
                                    else{
                                        out.write("<form method='GET' class='Ncoment' hidden>");                                        
                                            out.write("<div class='coment'>");
                                            out.write("<h5>"+c.getUserName()+" diz:</h5>");
                                            out.write("<p>"+c.getComent() +"</p>");
                                            out.write("<button name='aprova'><a href='coment.jsp?id="+ idPost + "&idcoment=" + c.getComentID() + "&status=1'>Aprovar comentário</a></button> ");
                                            out.write("<button name ='reprova'><a href='coment.jsp?id="+ idPost + "&idcoment=" + c.getComentID() + "&status=0'>Reprovar comentário</a></button> ");                                        
                                            out.write("</div>");
                                            out.write("</form>");

                                    }
                                    
                                 
                                   
                                    
                                    
                                }
                             
                            
                            %>                        

                            <%
                            if(request.getMethod() == "POST"){
                            String coment = request.getParameter("coment");
                            String userName = request.getParameter("userName");
                            int idUser = Integer.parseInt(request.getParameter("idUser"));
                            
                            Coment c = new Coment(idPost,idUser,coment);

                            DaoComent.setComent(c);
                            
                            out.write("<p>Seu comentário será analisado pelos nossos administradores e se aprovado irá aparecer para todos</p>");

                        }

                        %>
                        <form method="POST">
                            <input type="hidden" value="" name="userName" id="userName">
                            <input type="hidden" value="" name="idUser" id="idUser">

                            <script>
                                document.getElementById("userName").value = user[0].nomeUser
                                document.getElementById("idUser").value = user[0].idUser

                            </script>

                            <textarea style="resize: none;" name="coment" id="coment" maxlength="500"
                                class="form-control form-control-lg" placeholder="Faça login para comentar"
                                readonly></textarea>
                            <button class="btn btn-primary btn-sm w-25 mt-2 mb-3" disabled id="postar">Postar</button>
                    
                    </form>
                </div>
            </div>
                </body>

                </html>