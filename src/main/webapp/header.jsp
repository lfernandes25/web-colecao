<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header class="header">
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <div class="bordar">
        <div class="icone iconelogo logo-geral">
        </div>
        <div class="logado">
            <li class="opcoeslogado">
                <a href="../index.jsp" title="" > Sair </a>
            </li>
            <li class="opcoeslogado">
                <label>Olá, Leandro | </label>
            </li>
        </div>
        <nav class="navegation">

            <div class="contanier">
                <ul class="cadastroMenu">
                    <li class="teste2"><a href="#"> Cadastro </a>
                        <ul class="cadastroMebuSub">
                            <li><a href="${pageContext.request.contextPath}/cadastro/cadastroDeItens.jsp" title=""> Itens </a>  </li>
                            <li><a href="${pageContext.request.contextPath}/cadastro/cadastroDeCodigo.jsp" title=""> Código </a>  </li>
                            <li><a href="${pageContext.request.contextPath}/cadastro/cadastroDeEditora.jsp" title=""> Editora </a></li>
                        </ul>
                    </li>
                    <li class="teste2"><a href="#"> Pesquisar </a>
                        <ul class="cadastroMebuSub">
                            <li><a href="${pageContext.request.contextPath}/listagem/listagemItem.jsp" title=""> Itens </a>  </li>
                            <li><a href="${pageContext.request.contextPath}/listagem/listagemCodigo.jsp" title=""> Código </a>  </li>
                        </ul>
                    </li>
                    <li>
                        <a href="ajuda" title=""> Ajuda </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/inicial/principal.jsp" title=""> Página inicial  </a>
                    </li>
                    <li>

                        <a href="#" title="">Tela de Erros</a>
                         <ul class="cadastroMebuSub telaErros">
                    <li><a href="${pageContext.request.contextPath}/cadastro/erroRegistroDuplicado.jsp" title="Registro Duplicado">Registro Duplicado</a></li>
                        </ul>
                        </li>
                </ul>
            </div>
        </nav>
    </div>
</header>
