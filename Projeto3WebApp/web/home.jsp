<%-- 
    Document   : home
    Created on : 07/10/2018, 18:15:42
    Author     : Leona
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet" type="text/css" href="css/Estilo.css"/>
        <title>Projeto 3 | Home</title>
    </head>
    <body>
        <div id="conteudo">
            <div id="principal">
                <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
                <div style="border: solid 1px red;">
                    <label>Conteúdo da home.</label>
                    <div style="border: solid 1px blue;">
                        <label>Apresentação do site.</label>
                    </div>
                    <br><!--Apenas para termos uma melhor visualização-->
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
