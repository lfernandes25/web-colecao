<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <link rel="stylesheet" href="CSS/global.css">
        <title>Cadastro de Coleções</title>
    </head>
    <body>
        <div class="divInicial">

            <div class="divdireita">
                <h1 class="fontH1"> Cadastro de coleções </h1>
                <div class="divInicialCentral">
                    <div class="divloginImagem">
                        <img src="images/imagem1.png" alt>
                    </div>
                    <div class="divlogin font">


                        <form action="validate" method="post" id="login">
                         <!-- Mensagem Geral de Erro -->
                                                    <p>
                                                        <% if (request.getAttribute("errorGeral") != null) { %>
                                                            <span style="color: red;"><%= request.getAttribute("errorGeral") %></span>
                                                        <% } %>
                                                    </p>

                            <p>
                                <label>Usuário: </label>
                                <input type="text" id="usuario" name="usuario" class="teste"
                                value="<%= request.getParameter("usuario") != null ? request.getParameter("usuario") : "" %>">
                                <% if (request.getAttribute("errorUsuario") != null) { %>
                                <span style="color: red;"><%= request.getAttribute("errorUsuario") %></span>
                            <% } %>
                            </p>
                            <p> <label> Senha: </label>
                                <input type="text" id="senha" name="senha" class="teste" >
                                <% if (request.getAttribute("errorSenha") != null) { %>
                                <span style="color: red;"><%= request.getAttribute("errorSenha") %></span>
                            <% } %>
                            </p>
                            <p class="hoverButton">
                                <input type="submit" value="Entrar" name="Entrar" class="btStyle cursor" />
                            </p>
                        </form>

                    </div>
                </div>
            </div>

            <div class="divesquerda">

                <img src="images/X-Men 20.jpg" alt="" class="imagemDestaque">

            </div>
        </div>
    </body>
</html>
