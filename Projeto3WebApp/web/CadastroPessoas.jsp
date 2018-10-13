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
                        
                        <%if(request.getParameter("alterar")!=null){
                            int posicao = Integer.parseInt(request.getParameter("alterar"));
                            Pessoa p = Db.getPessoa().get(posicao);
                            
                            if(request.getParameter("btnAlterar")!=null){
                                p.setDados(request.getParameter("nome"), request.getParameter("cpf"), 
                                        request.getParameter("email"), request.getParameter("telefone"));
                                Db.getPessoa().set(posicao, p);
                                response.sendRedirect("CadastroPessoas.jsp");
                            }
                        %>
                        <form method="POST">
                            <p>ALTERAR</p>
                            <table>
                                <tr>
                                    <td><label>Nome:</label></td>
                                    <td><input type="text" name="nome" value="<%=p.getNome()%>"/></td>
                                </tr>
                                <tr>
                                    <td><label>CPF:</label></td>
                                    <td><input type="text" name="cpf" value="<%=p.getCpf()%>"/></td>
                                </tr>
                                <tr>
                                    <td><label>E-mail:</label></td>
                                    <td><input type="text" name="email" value="<%=p.getEmail()%>"/></td>
                                </tr>
                                <tr>
                                    <td><label>Telefone:</label></td>
                                    <td><input type="text" name="telefone" value="<%=p.getTelefone()%>"/></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <input type="submit" name="btnAlterar" value="Alterar" style="width: 100%;"/>
                                    </td>
                                </tr>
                            </table>
                        </form>
                        <%}%>
                        
                        <%if(request.getParameter("remover")!=null){
                            int posicao = Integer.parseInt(request.getParameter("remover"));
                            Pessoa p = Db.getPessoa().get(posicao);
                        %>
                        <form method="POST">
                            <p>REMOVER</p>
                            <table>
                                <tr>
                                    <td><label>Nome:</label></td>
                                    <td><label><%=p.getNome()%></label></td>
                                </tr>
                                <tr>
                                    <td><label>CPF:</label></td>
                                    <td><label><%=p.getCpf()%></label></td>
                                </tr>
                                <tr>
                                    <td><label>E-mail:</label></td>
                                    <td><label><%=p.getEmail()%></label></td>
                                </tr>
                                <tr>
                                    <td><label>Telefone:</label></td>
                                    <td><label><%=p.getTelefone()%></label></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <input type="submit" name="btnRemover" value="Remover" style="width: 100%;"/>
                                    </td>
                                </tr>
                            </table>
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