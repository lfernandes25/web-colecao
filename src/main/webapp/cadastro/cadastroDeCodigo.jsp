<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../CSS/global.css">
        <link rel="stylesheet" href="../CSS/header.css">
        <title>Cadastro de Código</title>
    </head>
    <body>
        <%@ include file="../header.jsp" %>

        <div class="panigiaInicial heightCadastroDeItens">
            <div class="subtitulo"><label class="cadastroDeItens"> Cadastro de Código </label></div>

            <div class="camada_1 corpoHeightCodigo">
                <div class="camada_2 corpoCadHeightCodigo">
                    <div class="divCadastroCodigo">
                        <div class="divCodigo divCodigoCodigo">

                            <label>Código: </label>

                            <input type="text" value="" name="n_item" placeholder="Item" class="item"/>

                            <input type="text" value="" name="titulo" placeholder="Título do item" class="titulo tituloCodigo"/>

                        </div>
                        <div class="divDados dadosCodigo">
                            <input type="text" value="" name="editora" placeholder="Editora" class="tipoEditora tipoEditoraCodigo"/>
                            <input type="text" value="" name="tipo" placeholder="Tipo" class="tipoEditora tipoEditoraCodigo"/>
                        </div>
                    </div>
                    <div class="hoverButton divBtCadastro divBtCadastroCodigo">
                        <a href="../listagem/listagemCodigo.jsp" title="">
                        <input type="submit" value="Cancelar" name="cancelar" class="btStyle" />
                        </a>
                        <input type="submit" value="Salvar" name="salvar" class="divStyleBt" />
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
