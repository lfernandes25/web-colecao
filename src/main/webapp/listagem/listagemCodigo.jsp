<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF">
        <link rel="stylesheet" href="../CSS/global.css">
        <link rel="stylesheet" href="../CSS/header.css">
        <title>Lista de Códigos</title>
    </head>
    <body>
        <%@ include file="../header.jsp" %>

        <div class="panigiaInicial heightCadastroDeItens">
            <div class="subtitulo"><label class="cadastroDeItens"> Lista de Códigos </label></div>

            <div class="camada_1">
                <div class="camada_2 corpoList">


                    <div class="divFiltros">
                        <div class="CamposFiltros">
                            <input type="text" value="" name="codigo" placeholder="Código" class="item itemPesquisa"/>
                            <input type="text" value="" name="titulo" placeholder="Título do item" class="titulo tituloCodigo"/>
                            <select title="" value="" name="editora" class="selectPesquisa"></select>
                            <select title="" value="" name="tipo" class="selectPesquisa selectPesquisaleft"></select>
                        </div>
                        <div class="CamposFiltrosBotao">
                            <div class="divButton">
                                <a href="" title="">
                                    <input id="bt_PesquisarCodigo" type="submit" value="Pesquisar" name="pesquisar_codigo" class="btStyle cursor filtroPesquisar"/>
                                </a>

                            </div>
                            <div class="divButton divBtListCadastroCodigo">
                        <a href="../cadastro/cadastroDeCodigo.jsp" title="">
                            <input id="bt_CadastrarCodigo" type="submit" value="Cadastrar Código" name="cadastrar_codigo" class="btStyle divBtCadastarCodigo cursor"/>
                        </a>
                            </div>
                        </div>
                    </div>

                    <div class="divCorpo2 divlistagemCodigo">
                        <div class="divCodigo listaColecaoTable">
                            <table class="listaColecaoTable fontCabecalho">
                                <tr>
                                    <td class="tableCodigo"> Código </td>
                                    <td> Item </td>
                                    <td class="tableEditora"> Editora </td>
                                    <td class="tableTipo a"> Tipo </td>
                                </tr>
                            </table>
                            <p class="linhaTabela"></p>
                            <table class="listaColecaoTable">
                                <tr>
                                    <td class="tableCodigo">001</td>
                                    <td class="tableTitulo">Sakura Card Captors</td>
                                    <td class="tableEditora">JBC</td>
                                    <td class="tableTipo b">Mangá</td>
                                </tr>
                                <tr class="c">
                                    <td class="tableCodigo">002</td>
                                    <td class="tableTitulo"> Clube Sakura Card Captors</td>
                                    <td class="tableEditora">Conrad</td>
                                    <td class="tableTipo b">Revista</td>
                                </tr>
                                <tr>
                                    <td class="tableCodigo">003</td>
                                    <td class="tableTitulo">Dragon Ball</td>
                                    <td class="tableEditora">Conrad</td>
                                    <td class="tableTipo b">Mangá</td>
                                </tr>
                                <tr class="c">
                                    <td class="tableCodigo">004</td>
                                    <td class="tableTitulo">Dragon Ball Z</td>
                                    <td class="tableEditora">Conrad</td>
                                    <td class="tableTipo b">Mangá</td>
                                </tr>
                                <tr>
                                    <td class="tableCodigo">005</td>
                                    <td class="tableTitulo">Guerreiras Magicas de Rayearth</td>
                                    <td class="tableEditora">JBC</td>
                                    <td class="tableTipo b">Mangá</td>
                                </tr>
                                <tr class="c">
                                    <td class="tableCodigo">006</td>
                                    <td class="tableTitulo">Love Hina</td>
                                    <td class="tableEditora">JBC</td>
                                    <td class="tableTipo b">Mangá</td>
                                </tr>
                                <tr>
                                    <td class="tableCodigo">007</td>
                                    <td class="tableTitulo">Harry Potter e a Pedra Filosofal</td>
                                    <td class="tableEditora">Rocco</td>
                                    <td class="tableTipo b">Livro</td>
                                </tr>
                                <tr class="c">
                                    <td class="tableCodigo">008</td>
                                    <td class="tableTitulo">Harry Potter e a Câmara Secreta</td>
                                    <td class="tableEditora">Rocco</td>
                                    <td class="tableTipo b">Livro</td>
                                </tr>
                                <tr>
                                    <td class="tableCodigo">009</td>
                                    <td class="tableTitulo">Harry Potter e o Prisioneiro de Azkabam</td>
                                    <td class="tableEditora">Rocco</td>
                                    <td class="tableTipo b">Livro</td>
                                </tr>
                                <tr class="c">
                                    <td class="tableCodigo">010</td>
                                    <td class="tableTitulo">Set Especial (Harry Potter Pris. De Azk)</td>
                                    <td class="tableEditora">Peixes</td>
                                    <td class="tableTipo b">Revista
                                        Poster</td>
                                </tr>
                                <tr>
                                    <td class="tableCodigo">011</td>
                                    <td class="tableTitulo">Game Word Especial Harry Potter</td>
                                    <td class="tableEditora">Conrad</td>
                                    <td class="tableTipo b">Revista</td>
                                </tr>
                                <tr class="c">
                                    <td class="tableCodigo">012</td>
                                    <td class="tableTitulo">Revista Super Poster ( Harry Potter)</td>
                                    <td class="tableEditora">Online</td>
                                    <td class="tableTipo b">Revista
                                        Poster</td>
                                </tr>
                                <tr>
                                    <td class="tableCodigo">013</td>
                                    <td class="tableTitulo">Nintendo World Especial</td>
                                    <td class="tableEditora">Conrad</td>
                                    <td class="tableTipo b">Revista</td>
                                </tr>
                                <tr class="c">
                                    <td class="tableCodigo">014</td>
                                    <td class="tableTitulo">Curso Completo de Desenho Mangá</td>
                                    <td class="tableEditora">Escala</td>
                                    <td class="tableTipo b">Revista</td>
                                </tr>
                                <tr>
                                    <td class="tableCodigo">015</td>
                                    <td class="tableTitulo">X-Men Adventures</td>
                                    <td class="tableEditora">Abril Jovem</td>
                                    <td class="tableTipo b">Revista HQ</td>
                                </tr>
                                <tr class="c">
                                    <td class="tableCodigo">016</td>
                                    <td class="tableTitulo">X-Men</td>
                                    <td class="tableEditora">Abril Jovem</td>
                                    <td class="tableTipo b">Revista HQ</td>
                                </tr>
                                <tr>
                                    <td class="tableCodigo">017</td>
                                    <td class="tableTitulo">Tempestade dos X-Men</td>
                                    <td class="tableEditora">Abril Jovem</td>
                                    <td class="tableTipo b">Revista HQ</td>
                                </tr>
                                <tr class="c">
                                    <td class="tableCodigo">018</td>
                                    <td class="tableTitulo">X-Men (Super Herois Premiun)</td>
                                    <td class="tableEditora">Abril Jovem</td>
                                    <td class="tableTipo b">Revista HQ</td>
                                </tr>
                                <tr>
                                    <td class="tableCodigo">019</td>
                                    <td class="tableTitulo">Os Fabulosos X-Men</td>
                                    <td class="tableEditora">Abril Jovem</td>
                                    <td class="tableTipo b">Revista HQ</td>
                                </tr>
                                <tr class="c">
                                    <td class="tableCodigo">020</td>
                                    <td class="tableTitulo">X-Men Evolution</td>
                                    <td class="tableEditora">Panini Comics</td>
                                    <td class="tableTipo b">Revista HQ</td>
                                </tr>
                            </table>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
