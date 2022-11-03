<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ page import="com.blog.entidades.Post" %>
        <%@ page import="com.blog.dao.DaoPost" %>
            <%@ page import="java.util.List" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Document</title>
                    
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
                        rel="stylesheet"
                        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
                        crossorigin="anonymous">
                        <link rel="stylesheet" href="./style/style.css">
                        
                    <style>
                        
                    </style>
                    <script src="./script.js"></script>
                </head>

                <body onload="verifyUser()">
                    <ul>
                        <li><a class="active" href="index.jsp">Home</a></li>
                        
                        <li style="float:right; display: block;" id="login"><a href="login.jsp">Login</a></li>
                        <li style="float:right; display: none;" id="logout"><a href="" onclick="logout()">Logout<br></a>
                        </li>
                    </ul>
                    <span style="float:right;" id="UserName"></span>
                    <div class="container">
                        <div class="box">
                            
                            <form method="GET">                             
                                                                    
                                <% 
                                    List <Post> posts = DaoPost.getPosts();
                                    for(Post p : posts ){
                                        out.write("<div class='post'>");
                                        out.write("<h4>"+p.getTituloPostagem()+"</h4>");
                                        out.write("<p>" + p.getIntro() + "...<a href='posts.jsp?id="+ p.getIdPost() + "'>Leia Mais</a></p>");
                                        out.write("</div>");
                                    }

                                    %>
                               
                            </form>
                        </div>
                    </div>


                </body>

                </html>