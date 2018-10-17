<%-- 
    Document   : CadastroVeiculos
    Created on : 07/10/2018, 18:20:51
    Author     : Leona
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Estilo.css"/>
        <title>Projeto 3 | Veículos</title>
    </head>
    <body>
        <div id="conteudo">
            <div id="principal">
                <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
                <div style="border: solid 1px red;">
                    <label>Conteúdo do cadastro de veículos.</label>
                    <div style="border: solid 1px blue;">
                        <label>Formulário para a entrada de dados.</label>
                        <Form method="POST">
                            <p>ADICIONAR</p>
                            <table>
                                <tr>
                                    <td><label>Placa:</label></td>
                                    <td><input type="text" name="nome"></td>
                                </tr>
                                <tr>
                                    <td><label>Marca:</label></td>
                                    <td><input type="text" name="marca"></td>
                                </tr>
                                <tr>
                                    <td><label>Modelo:</label></td>
                                    <td><input type="text" name="modelo"></td>
                                </tr>
                                <tr>
                                    <td><label>Cor:</label></td>
                                    <td><input type="text" name="cor"></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="submit" name="Adicionar" value="Adicionar"> 
                                        
                                    </td>
                                </tr>
                            </table>
                        </Form>
                        <!--ALTERAR-->
                        <Form method="POST">
                            <p>ALTERAR</p>
                            <table>
                                <tr>
                                    <td><label>Placa:</label></td>
                                    <td><input type="text" name="nome" value=""></td>
                                </tr>
                                <tr>
                                    <td><label>Marca:</label></td>
                                    <td><input type="text" name="marca" value=""></td>
                                </tr>
                                <tr>
                                    <td><label>Modelo:</label></td>
                                    <td><input type="text" name="modelo" value=""></td>
                                </tr>
                                <tr>
                                    <td><label>Cor:</label></td>
                                    <td><input type="text" name="cor" value=""></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="submit" name="Alterar" value="Alterar"> 
                                        
                                    </td>
                                </tr>
                            </table>
                        </Form>
                    </div>
                    <br><!--Apenas para termos uma melhor visualização-->
                    <div style="border: solid 1px blue;">
                        <label>Tabela para a exibição dos dados.</label>
                    </div>
                    <br><!--Apenas para termos uma melhor visualização-->
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
