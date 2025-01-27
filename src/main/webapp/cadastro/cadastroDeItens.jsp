<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../CSS/global.css">
        <link rel="stylesheet" href="../CSS/header.css">
        <title>Cadastro de Itens</title>
    </head>
    <body>
        <%@ include file="../header.jsp" %>

        <div class="panigiaInicial heightCadastroDeItens">
            <div class="subtitulo"><label class="cadastroDeItens"> Cadastro de Item </label></div>

            <form action="CadastroItens.java">
                <div class="camada_1 corpoCadastroItenHeight">
                    <div class="camada_2 corpoCadHeightItem">
                        <div style="width: 1060px; height: 350px; margin-top: 20px;">
                            <div class="divImagemCadastroItens">
                                <img src="../image/X-Men 20.jpg" alt>
                            </div>
                            <div class="divCadastroDados">
                                <div class="divCadastroItens">
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
                                        <input type="text" value="" name="preco_capa" placeholder="Preço capa" class="preco"/>
                                        <input type="text" value="" name="valor_pago" placeholder="Valor pago" class="preco"/>
                                    </div>

                                </div>
                                <div class="divBtCadastro hoverButton">
                                    <input type="button" value="Alterar Imagem" name="alterar_imagem" class="stylebtImagem" />
                                    <a href="../inicial/principal.jsp" title="">
                                        <input type="button" value="Cancelar" name="cancelar" class="divStyleBt" />
                                    </a>
                                    <input type="submit" value="Salvar" name="salvar" class="divStyleBt" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
