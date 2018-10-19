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
                <div id="areaConteudo">
                    
                    <div id="bloco" class="paragrafoHome">
                        <h1>Sobre o Projeto 3</h1>
                        <p>Este projeto foi desenvolvido por Leonardo Santos, 
                            Nicolas Almeida e Thyago Santos como uma atividade 
                            para a aula de Programação Orientada a Objeto, da FATEC
                        de Praia Grande.</p>
                        <p>O Objetivo dessa atividade era criar um site que armazenasse
                        cadastros de pessoas, empresas e veículos dentro de vetores.
                        O usuário também poderia adicionar, alterar ou remover esses cadastros.</p>
                    </div>
                    <br><!--Apenas para termos uma melhor visualização-->
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
