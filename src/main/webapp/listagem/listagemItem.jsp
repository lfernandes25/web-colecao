<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../CSS/global.css">
        <link rel="stylesheet" href="../CSS/header.css">
        <title>Pesquisa de Itens</title>
    </head>
    <body>
        <%@ include file="../header.jsp" %>

        <div class="panigiaInicial heightCadastroDeItens">
            <div class="subtitulo"><label class="cadastroDeItens"> Pesquisa de Itens </label></div>


                <div class="camada_1 cama_2_height_FiltroItem">
                    <div class="camada_2 cama_2_height_PesquisarItem">

                        <div class="camada_3">
                            <div class="divCadastroItens divFiltrosItens">
                                <div class="divCodigo">

                                    <label>Código: </label>
                                    <input type="text" value="" name="n_total" placeholder="Total" class="total"/>
                                    <input type="text" value="" name="n_item" placeholder="Item" class="item"/>
                                    <input type="text" value="" name="n_edicao" placeholder="Edição" class="CoEdicao"/>

                                </div>

                                <div class="divDados">
                                    <input type="text" value="" name="titulo" placeholder="Título do item" class="titulo"/>
                                    <input type="text" value="" name="edicao" placeholder="Edição" class="edicao"/>
                                    <input type="text" value="" name="subtitulo" placeholder="Subtítulo do item" class="subtituloCadastro"/>
                                    <input type="text" value="" name="editora" placeholder="Editora" class="tipoEditora"/>
                                    <input type="text" value="" name="tipo" placeholder="Tipo" class="tipoEditora"/>
                                    <input type="text" value="" name="data_compra" placeholder="Data de compra" class="dataCadastro"/>
                                    <input type="text" value="" name="data_lancamento" placeholder="Data de lançamento" class="dataCadastro"/>

                                </div>

                            </div>
                            <div class="divBtFiltroItens hoverButton">
                                <input type="button" value="Pesquisar" name="Pesquisar" class="styleBtFiltroItem" />
                                <input type="submit" value="Limpar" name="limpar" class="styleBtFiltroItem" />
                                <a href="../cadastro/cadastroDeItens.jsp" title="">
                                    <input type="button" value="Cadastrar Itens" name="cadastrar_item" class="styleBtFiltroItem" />
                                </a>
                            </div>


                        </div>
                        <div class="divCorpo2 divlistagemCodigo">
                            <div class="divCodigo listaItemTable">
                                <table class="listaItemTable fontCabecalho">
                                    <tr>
                                        <td class="tableCodigoItem"> Código </td>
                                        <td> Item </td>
                                        <td class="tableItemEdicao"> Edição </td>
                                        <td class="tableEditora"> Editora </td>
                                        <td class="tableTipo "> Tipo </td>
                                        <td class="tableTipo a"> Ação </td>
                                    </tr>
                                </table>
                                <p class="linhaTabela"></p>
                                <table class="listaItemTable">
                                    <tr>
                                        <td class="tableCodigoItemItem">0001.001.001</td>
                                        <td class="tableItemTitulo">Sakura Card Captors</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">JBC</td>
                                        <td class="tableTipo">Mangá</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr class="c">
                                        <td class="tableCodigoItem">002</td>
                                        <td class="tableItemTitulo"> Clube Sakura Card Captors</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">Conrad</td>
                                        <td class="tableTipo">Revista</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr>
                                        <td class="tableCodigoItem">003</td>
                                        <td class="tableItemTitulo">Dragon Ball</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">Conrad</td>
                                        <td class="tableTipo">Mangá</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr class="c">
                                        <td class="tableCodigoItem">004</td>
                                        <td class="tableItemTitulo">Dragon Ball Z</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">Conrad</td>
                                        <td class="tableTipo">Mangá</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr>
                                        <td class="tableCodigoItem">005</td>
                                        <td class="tableItemTitulo">Guerreiras Magicas de Rayearth</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">JBC</td>
                                        <td class="tableTipo">Mangá</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr class="c">
                                        <td class="tableCodigoItem">006</td>
                                        <td class="tableItemTitulo">Love Hina</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">JBC</td>
                                        <td class="tableTipo">Mangá</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr>
                                        <td class="tableCodigoItem">007</td>
                                        <td class="tableItemTitulo">Harry Potter e a Pedra Filosofal</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">Rocco</td>
                                        <td class="tableTipo">Livro</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr class="c">
                                        <td class="tableCodigoItem">008</td>
                                        <td class="tableItemTitulo">Harry Potter e a Câmara Secreta</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">Rocco</td>
                                        <td class="tableTipo">Livro</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr>
                                        <td class="tableCodigoItem">009</td>
                                        <td class="tableItemTitulo">Harry Potter e o Prisioneiro de Azkabam</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">Rocco</td>
                                        <td class="tableTipo">Livro</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr class="c">
                                        <td class="tableCodigoItem">010</td>
                                        <td class="tableItemTitulo">Set Especial (Harry Potter Pris. De Azk)</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">Peixes</td>
                                        <td class="tableTipo">Revista Poster</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr>
                                        <td class="tableCodigoItem">011</td>
                                        <td class="tableItemTitulo">Game Word Especial Harry Potter</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">Conrad</td>
                                        <td class="tableTipo">Revista</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr class="c">
                                        <td class="tableCodigoItem">012</td>
                                        <td class="tableItemTitulo">Revista Super Poster ( Harry Potter)</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">Online</td>
                                        <td class="tableTipo">Revista
                                            Poster</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr>
                                        <td class="tableCodigoItem">013</td>
                                        <td class="tableItemTitulo">Nintendo World Especial</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">Conrad</td>
                                        <td class="tableTipo">Revista</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr class="c">
                                        <td class="tableCodigoItem">014</td>
                                        <td class="tableItemTitulo">Curso Completo de Desenho Mangá</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">Escala</td>
                                        <td class="tableTipo">Revista</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr>
                                        <td class="tableCodigoItem">015</td>
                                        <td class="tableItemTitulo">X-Men Adventures</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">Abril Jovem</td>
                                        <td class="tableTipo">Revista HQ</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr class="c">
                                        <td class="tableCodigoItem">016</td>
                                        <td class="tableItemTitulo">X-Men</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">Abril Jovem</td>
                                        <td class="tableTipo">Revista HQ</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr>
                                        <td class="tableCodigoItem">017</td>
                                        <td class="tableItemTitulo">Tempestade dos X-Men</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">Abril Jovem</td>
                                        <td class="tableTipo">Revista HQ</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr class="c">
                                        <td class="tableCodigoItem">018</td>
                                        <td class="tableItemTitulo">X-Men (Super Herois Premiun)</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">Abril Jovem</td>
                                        <td class="tableTipo">Revista HQ</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr>
                                        <td class="tableCodigoItem">019</td>
                                        <td class="tableItemTitulo">Os Fabulosos X-Men</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">Abril Jovem</td>
                                        <td class="tableTipo">Revista HQ</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                    <tr class="c">
                                        <td class="tableCodigoItem">020</td>
                                        <td class="tableItemTitulo">X-Men Evolution</td>
                                        <td class="tableItemEdicao"> 001 </td>
                                        <td class="tableEditora">Panini Comics</td>
                                        <td class="tableTipo">Revista HQ</td>
                                        <td class="tableTipo b"> Ação </td>
                                    </tr>
                                </table>

                            </div>

                        </div>

                    </div>
                </div>

        </div>
    </body>
</html>