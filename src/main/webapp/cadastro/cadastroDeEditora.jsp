<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/cadastroEditora.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/global.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/header.css">
        <title>Cadastro de Editora</title>
    </head>
    <body>
        <%@ include file="../header.jsp" %>

        <div class="panigiaInicial corpoCadastroEditora">
            <div class="subtitulo"><label class="cadastroDeItens">Cadastro de Editora</label></div>
            <div class="mioloCadastroEditora1">
                <div class="mioloCadastroEditora2">
                    <div class="mioloCadastroEditora3">
                        <div class="campoEditora">
                            <form action="${pageContext.request.contextPath}/cadastrarEditora" method="post" id="formCadastroEditora">
                                <!-- Mensagens de Erro e Sucesso -->
                                <div class="messageContainer">
                                    <p>
                                        <% if (request.getAttribute("errorMessage") != null) { %>
                                            <span class="errorMessage"><%= request.getAttribute("errorMessage") %></span>
                                        <% } %>
                                    </p>
                                    <p>
                                        <% if (request.getAttribute("successMessage") != null) { %>
                                            <span class="successMessage"><%= request.getAttribute("successMessage") %></span>
                                        <% } %>
                                    </p>
                                </div>

                                <!-- Campo de Entrada Nome Editora -->
                                <p>
                                    <input type="text" name="nomeEditora" placeholder="Nome editora" class="cadastroNomeEditora"
                                    value="<%= request.getAttribute("nomeEditora") != null ? request.getAttribute("nomeEditora") : "" %>" />
                                </p>
                            </div>
                        </div>

                        <div class="divBtCadEditora hoverButton">
                            <input type="button" value="Cancelar" name="cancelar" class="divStyleBt" onclick="window.location.href='${pageContext.request.contextPath}/inicial/principal.jsp'" />
                            <input type="submit" value="Salvar" name="salvar" class="divStyleBt" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
