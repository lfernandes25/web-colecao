<%--
    Document   : newjsp
    Created on : 13/03/2014, 15:55:26
    Author     : Leandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../CSS/global.css">
        <link rel="stylesheet" href="../CSS/header.css">
        <title>Página inicial</title>
    </head>
    <body>
        <!--
        <header class="header">
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
                            <li><a href="#"> Cadastro </a>
                                <ul class="cadastroMebuSub">
                                    <li><a href="../cadastro/cadastroDeItens.jsp" title=""> Itens </a>  </li>
                                    <li><a href="../cadastro/cadastroDeCodigo.jsp" title=""> Código </a>  </li>
                                </ul>
                            </li>
                            <li>
                                <a href="pesquisar" title=""> Pesquisar </a>
                            </li>
                            <li>
                                <a href="ajuda" title=""> Ajuda </a>
                            </li>
                            <li>
                                <a href="ajuda" title="">  </a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </header>
-->
<%@ include file="../header.jsp" %>

        <div class="panigiaInicial">
            <div class="subtitulo"><label> Ultimos Registros </label></div>

            <div class="camada_1">
                <div class="blocoDestaque">
                    <div class="destaque">

                        <div class="imgensDestaque">
                            <img src="../images/1403.175.006.jpg" alt>
                        </div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>Universo Marvel</label></label></p>
                            <p><label>Codigo: <label>1403.175.006</label></label></p>
                            <p><label>Data: <label>05/03/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1402.136.020.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>Superman</label></label></p>
                            <p><label>Codigo: <label>1402.136.020</label></label></p>
                            <p><label>Data: <label>10/02/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1401.135.020.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>Liga da Justiça</label></label></p>
                            <p><label>Codigo: <label>1401.135.020</label></label></p>
                            <p><label>Data: <label>10/02/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1400.180.004.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>X-Men</label></label></p>
                            <p><label>Codigo: <label>1400.180.004</label></label></p>
                            <p><label>Data: <label>10/02/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1399.182.003.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>Homem Aranha</label></label></p>
                            <p><label>Codigo: <label>1399.182.003</label></label></p>
                            <p><label>Data: <label>10/02/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                </div>
                <div class="blocoDestaque">
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1398.177.004.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>Wolverine</label></label></p>
                            <p><label>Codigo: <label>1398.177.004</label></label></p>
                            <p><label>Data: <label>10/02/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1397.183.004.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>Homem de Ferro & Thor</label></label></p>
                            <p><label>Codigo: <label>1397.183.004</label></label></p>
                            <p><label>Data: <label>10/02/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1396.134.019.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>Lanterna Verde</label></label></p>
                            <p><label>Codigo: <label>1396.134.019</label></label></p>
                            <p><label>Data: <label>10/01/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1395.186.001.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>Era de Ultron</label></label></p>
                            <p><label>Codigo: <label>1395.186.001</label></label></p>
                            <p><label>Data: <label>10/01/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1394.185.004.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>Avante Vingadores!</label></label></p>
                            <p><label>Codigo: <label>1394.185.004</label></label></p>
                            <p><label>Data: <label>10/01/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                </div>
                <div class="blocoDestaque">
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1393.135.019.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>Liga da Justiça</label></label></p>
                            <p><label>Codigo: <label>1393.135.019</label></label></p>
                            <p><label>Data: <label>10/01/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1392.184.001.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>X-Men Extra</label></label></p>
                            <p><label>Codigo: <label>1392.184.001</label></label></p>
                            <p><label>Data: <label>10/01/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1391.092.043.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>Ultimate Marvel</label></label></p>
                            <p><label>Codigo: <label>1391.092.043</label></label></p>
                            <p><label>Data: <label>10/01/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1390.180.003.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>X-Men</label></label></p>
                            <p><label>Codigo: <label>1390.180.003</label></label></p>
                            <p><label>Data: <label>10/01/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1389.182.002.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>Homem Aranha</label></label></p>
                            <p><label>Codigo: <label>1389.180.002</label></label></p>
                            <p><label>Data: <label>10/01/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                </div>
                <div class="blocoDestaque">
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1388.176.004.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>Os Vingadores</label></label></p>
                            <p><label>Codigo: <label>1388.176.004</label></label></p>
                            <p><label>Data: <label>10/01/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1387.177.003.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>Wolverine</label></label></p>
                            <p><label>Codigo: <label>1387.177.003</label></label></p>
                            <p><label>Data: <label>10/01/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1386.175.005.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>Universo Marvel</label></label></p>
                            <p><label>Codigo: <label>1386.175.005</label></label></p>
                            <p><label>Data: <label>10/01/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1385.183.003.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>Homem de Ferro & Thor</label></label></p>
                            <p><label>Codigo: <label>1385.183.003</label></label></p>
                            <p><label>Data: <label>10/01/2014</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                    <div class="destaque">
                        <div class="imgensDestaque"><img src="../images/1384.134.018.jpg" alt></div>
                        <div class="dadosDasImagensDestaque">
                            <p class="caixaNome"><label>Nome: <label>Lanterna Verde</label></label></p>
                            <p><label>Codigo: <label>1384.134.018</label></label></p>
                            <p><label>Data: <label>10/12/2013</label></label></p>
                        </div>
                        <div class="verDetalhes">
                            <div class="lbMaisDetalhes"><span>Mais detalhes</span></div>
                            <div class="btMaisDetalhes lbmais"><a href="../cadastro/erroRegistroDuplicado.jsp">+</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
