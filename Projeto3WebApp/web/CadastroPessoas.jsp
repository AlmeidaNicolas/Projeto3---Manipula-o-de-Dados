<%-- 
    Document   : CadastroPessoas
    Created on : 07/10/2018, 18:19:21
    Author     : Leona
--%>

<%@page import="br.com.fatecpg.manutencaoCadastro.Db"%>
<%@page import="br.com.fatecpg.manutencaoCadastro.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Estilo.css"/>
        <title>Projeto 3 | Pessoas</title>
    </head>
    <body>
        <div id="conteudo">
            <div id="principal">
                <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
                <div style="border: solid 1px red;">
                    <label>Conteúdo do cadastro de pessoas.</label>
                    <div style="border: solid 1px blue;">
                        <label>Formulário para a entrada de dados.</label>
                        
                        <%if(request.getParameter("alterar")!=null){%>
                        <form>
                            <p>ALTERAR</p>
                            Nome: <input type="text" name="nome"/>
                        </form>
                        <%}%>
                        <%if(request.getParameter("remover")!=null){%>
                        <form>
                            <p>REMOVER</p>
                            index: 
                            Nome: <input type="text" name="nome"/>
                        </form>
                        <%}%>
                        
                    </div>
                    <br><!--Apenas para termos uma melhor visualização-->
                    <div style="border: solid 1px blue;">
                        <label>Tabela para a exibição dos dados.</label>
                        
                        <table border="1">
                            <tr>
                                <th>Nome</th>
                                <th>CPF</th>
                                <th>E-mail</th>
                                <th>Telefone</th>
                                <td><button>Adicionar outro</button></td>
                            </tr>
                            <%for(Pessoa p: Db.getPessoa()){%>
                            <tr>
                                <td><%= p.getNome()%></td>
                                <td><%= p.getCpf()%></td>
                                <td><%= p.getEmail()%></td>
                                <td><%= p.getTelefone()%></td>
                                <%int i = Db.getPessoa().indexOf(p);%>
                                <td>
                                    <form method="POST">
                                        <a href="CadastroPessoas.jsp?alterar=<%=i%>"><input type="button" value="Alterar"/></a>
                                        <a href="CadastroPessoas.jsp?remover=<%=i%>"><input type="button" value="Remover"/></a>
                                    </form>
                                </td>
                            </tr>
                            <%}%>
                        </table>
                        
                    </div>
                    <br><!--Apenas para termos uma melhor visualização-->
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>