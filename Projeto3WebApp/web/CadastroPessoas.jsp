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
                <div id="areaConteudo">
                    
                    <div class="bloco" id="formulario">
                        
                        <!--**********BLOCO QUE ADICIONA UM CADASTRO*********-->
                        <%if(request.getParameter("adicionar")!=null){    
                            if(request.getParameter("btnAdicionar")!=null){
                                String nome = request.getParameter("nome");
                                String cpf = request.getParameter("cpf");
                                String email = request.getParameter("email");
                                String telefone = request.getParameter("telefone");
                                
                                
                                Pessoa p = new Pessoa();
                                p.setDados(nome, cpf, email, telefone);
                                Db.getPessoa().add(p);
                                response.sendRedirect("CadastroPessoas.jsp");
                            }
                        %>
                        <form method="POST">
                            <p>ADICIONAR</p>
                            <table>
                                <tr>
                                    <td><label>Nome:</label></td>
                                    <td><input type="text" name="nome" required autofocus placeholder="Ex: João Silva"/></td>
                                </tr>
                                <tr>
                                    <td><label>CPF:</label></td>
                                    <td><input type="text" name="cpf" required placeholder="Ex: 123.456.789-12"/></td>
                                </tr>
                                <tr>
                                    <td><label>E-mail:</label></td>
                                    <td><input type="email" name="email" required placeholder="Ex: Joao@email.com"/></td>
                                </tr>
                                <tr>
                                    <td><label>Telefone:</label></td>
                                    <td><input type="text" name="telefone" required placeholder="Ex: (12)34567-8901"/></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <input type="submit" name="btnAdicionar" value="Adicionar" style="width: 100%;"/>
                                    </td>
                                </tr>
                            </table>
                        </form>
                        <%}%>
                        <!--***********BLOCO QUE ALTERA UM CADASTRO**********-->
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
                                    <td><input type="text" name="nome" value="<%=p.getNome()%>" required autofocus placeholder="Ex: João Silva"/></td>
                                </tr>
                                <tr>
                                    <td><label>CPF:</label></td>
                                    <td><input type="text" name="cpf" value="<%=p.getCpf()%>" required placeholder="Ex: 123.456.789-12"/></td>
                                </tr>
                                <tr>
                                    <td><label>E-mail:</label></td>
                                    <td><input type="text" name="email" value="<%=p.getEmail()%>" required placeholder="Ex: Joao@email.com"/></td>
                                </tr>
                                <tr>
                                    <td><label>Telefone:</label></td>
                                    <td><input type="text" name="telefone" value="<%=p.getTelefone()%>" required placeholder="Ex: (12)34567-8901"/></td>
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
                        <!--***********BLOCO QUE REMOVE UM CADASTRO**********-->
                        <%if(request.getParameter("remover")!=null){
                            int posicao = Integer.parseInt(request.getParameter("remover"));
                            Pessoa p = Db.getPessoa().get(posicao);
                            if(request.getParameter("btnRemover")!=null){
                                Db.getPessoa().remove(p);
                                response.sendRedirect("CadastroPessoas.jsp");
                            }
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
                    <div class="bloco" id="tabela" style="border: solid 1px blue;">
                        <label>Tabela para a exibição dos dados.</label>
                        
                        <table border="1">
                            <tr>
                                <th>Nome</th>
                                <th>CPF</th>
                                <th>E-mail</th>
                                <th>Telefone</th>
                                <td>
                                    <form>
                                        <a href="CadastroPessoas.jsp?adicionar=1"><input type="button" value="Adicionar outro"/></a>
                                    </form>
                                </td>
                            </tr>
                            <%
                                if(Db.getPessoa().isEmpty()){
                                    %><td colspan="4"><label>Não existe nenhum cadastro de pessoas.</label></td><%
                                }
                            %>
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
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>