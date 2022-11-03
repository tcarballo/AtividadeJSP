<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ page import="com.blog.entidades.User" %>
        <%@ page import="com.blog.dao.DaoUser" %>
        <%@ page import="java.util.concurrent.TimeUnit" %>
        
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
                    crossorigin="anonymous">
                <link rel="stylesheet"
                    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
                    <link rel="stylesheet" href="./style/style_1.css">
                    <link rel="stylesheet" href="./style/style.css">
                <script src="./script.js"></script>
            </head>

            <body>
                <ul>
                    <li><a class="active" href="index.jsp">Home</a></li>
                    </li>
                </ul>
                <form method="POST">
                    <div class="container1" id="cad">
                        <div class="box1">
                            <div class="mb-3 row">
                                <label class="col-sm-2 col-form-label">Nome</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" placeholder="Digite nome" name="nomeUser"
                                        required value="">
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label class="col-sm-2 col-form-label">Email</label>
                                <div class="col-sm-10">
                                    <input type="email" class="form-control" placeholder="email@example.com"
                                        name="email" required value="">
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" name="senha" required value=""
                                        placeholder="Insira a senha">
                                </div>
                            </div>

                            <div class="">
                                <div class="my-btn">
                                    <button class="btn btn-success w-25 m-2" id="cadastrar">Cadastrar</button>
                                    <button class="btn btn-success w-25 m-2" id="button" onclick="window.location.assign('./login.jsp')">Login</button>
                                </div>
                            </div>
                                <%                                
                                if(request.getMethod() == "POST"){
                                    String nome = request.getParameter("nomeUser");
                                    String email = request.getParameter("email");
                                    String senha = request.getParameter("senha");
                        
                                    User user =  new User(nome,email,senha);
                                    if(DaoUser.validaUser(user)){
                                        DaoUser.addUser(user);
                                        response.sendRedirect("login.jsp");

                                    }
                                    else{
                                        out.write("<script>alert('E-mail já cadastrado')</script>");
                                    }            
                                }
                                %>
                            </div>
                        

                    </div>
                </form>
            </body>

            </html>