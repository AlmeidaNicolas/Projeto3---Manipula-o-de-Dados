<%-- 
    Document   : CadastroEmpresas
    Created on : 07/10/2018, 18:20:00
    Author     : Leona
--%>

<%@page import="br.com.fatecpg.manutencaoCadastro.Db"%>
<%@page import="br.com.fatecpg.manutencaoCadastro.Empresa"%>
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
                    <!--form e lógica para inserção de dados das empresas-->
                    <%
                        if (request.getParameter("novaEmpresa") != null) {

                            if (request.getParameter("btnNovaEmpresa") != null) {
                                String nomeEmpresa = request.getParameter("nomeEmpresa");
                                String nomeFantasia = request.getParameter("nomeFantasia");
                                String nomeProprietario = request.getParameter("nomeProprietario");
                                String cnpj = request.getParameter("cnpj");
                                String endereco = request.getParameter("endereco");
                                String email = request.getParameter("email");
                                String telefone = request.getParameter("telefone");
                                Empresa c = new Empresa();
                                c.setDados(nomeEmpresa, nomeFantasia, nomeProprietario, cnpj, endereco, email, telefone);
                                Db.getEmpresas().add(c);
                                response.sendRedirect("CadastroEmpresas.jsp");
                            }

                    %>
                    <form method="POST">
                        <p>ADICIONAR</p>
                        <table>
                            <tr>
                                <td><label>Nome da Empresa:</label></td>
                                <td><input type="text" name="nomeEmpresa" required autofocus placeholder="Ex: Grupo Wolksvagen"/></td>
                            </tr>
                            <tr>
                                <td><label>Nome Fantasia:</label></td>
                                <td><input type="text" name="nomeFantasia" required autofocus placeholder="Ex: Wolkswagen"/></td>
                            </tr>
                            <tr>
                                <td><label>Nome do Proprietário:</label></td>
                                <td><input type="text" name="nomeProprietario" required autofocus placeholder="Ex: Sergei Milstein"/></td>
                            </tr>
                            <tr>
                                <td><label>CNPJ:</label></td>
                                <td><input type="text" name="cnpj" required placeholder="Ex: 765.093.243/8948-99"/></td>
                            </tr>
                            <tr>
                                <td><label>Endereço:</label></td>
                                <td><input type="text" name="endereco" required autofocus placeholder="Ex: Rua João Guimarães Rosa"/></td>
                            </tr>
                            <tr>
                                <td><label>E-mail:</label></td>
                                <td><input type="email" name="email" required placeholder="Ex: maria@email.com"/></td>
                            </tr>
                            <tr>
                                <td><label>Telefone:</label></td>
                                <td><input type="text" name="telefone" required placeholder="Ex: (12)34567-8901"/></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <input type="submit" name="btnNovaEmpresa" value="Adicionar" style="width: 100%;"/>
                                </td>
                            </tr>
                        </table>
                    </form>
                    <%}%>
                    <!--form e lógica para alteração de dados-->
                    <%
                        if (request.getParameter("alterarEmpresa") != null) {
                            int pos = Integer.parseInt(request.getParameter("alterarEmpresa"));
                            Empresa e = Db.getEmpresas().get(pos);

                            if (request.getParameter("alterarContato") != null) {
                                e.setDados(request.getParameter("nomeEmpresa"), request.getParameter("nomeFantasia"),
                                        request.getParameter("nomeProprietario"), request.getParameter("cnpj"), request.getParameter("endereco"),
                                        request.getParameter("email"), request.getParameter("telefone"));

                                Db.getEmpresas().set(pos, e);
                                response.sendRedirect("CadastroEmpresas.jsp");
                            }
                    %>
                    <form method="POST">
                        <p>ALTERAR</p>
                        <table>
                            <tr>
                                <td><label>Nome da Empresa:</label></td>
                                <td><input type="text" name="nomeEmpresa" value="<%=e.getNomeEmpresa()%>" required autofocus placeholder="Ex: João Silva"/></td>
                            </tr>
                            <tr>
                                <td><label>Nome Fantasia:</label></td>
                                <td><input type="text" name="nomeFantasia" value="<%=e.getNomeFantasia()%>" required autofocus placeholder="Ex: João Silva"/></td>
                            </tr>
                            <tr>
                                <td><label>Nome do Proprietário:</label></td>
                                <td><input type="text" name="nomeProprietario" value="<%=e.getNomeProprietario()%>" required autofocus placeholder="Ex: João Silva"/></td>
                            </tr>
                            <tr>
                                <td><label>CNPJ:</label></td>
                                <td><input type="text" name="cnpj" value="<%=e.getCnpj()%>" required placeholder="Ex: 123.456.789-12"/></td>
                            </tr>
                            <tr>
                                <td><label>Endereço:</label></td>
                                <td><input type="text" name="endereco" value="<%=e.getNomeEmpresa()%>" required autofocus placeholder="Ex: João Silva"/></td>
                            </tr>
                            <tr>
                                <td><label>E-mail:</label></td>
                                <td><input type="text" name="email" value="<%=e.getEmail()%>" required placeholder="Ex: Joao@email.com"/></td>
                            </tr>
                            <tr>
                                <td><label>Telefone:</label></td>
                                <td><input type="text" name="telefone" value="<%=e.getTelefone()%>" required placeholder="Ex: (12)34567-8901"/></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <input type="submit" name="AlterarEmpresa" value="Alterar" style="width: 100%;"/>
                                </td>
                            </tr>
                        </table>
                    </form>

                    <%}%>
                    <!--form e lógica para remoção de dados-->
                    <%if (request.getParameter("removerEmpresa") != null) {
                            int pos = Integer.parseInt(request.getParameter("RemoverEmpresa"));
                            Empresa e = Db.getEmpresas().get(pos);

                            if (request.getParameter("removerEmpresa") != null) {

                                Db.getEmpresas().remove(e);
                                response.sendRedirect("CadastroEmpresas.jsp");
                            }
                    %>

                    <form method="POST">
                        <p>REMOVER</p>
                        <table>
                            <tr>
                                <td><label>Nome da Empresa:</label></td>
                                <td><label><%=e.getNomeEmpresa()%></label></td>
                            </tr>
                            <tr>
                                <td><label>Nome Fantasia:</label></td>
                                <td><label><%=e.getNomeFantasia()%></label></td>
                            </tr>
                            <tr>
                                <td><label>Nome do Proprietário:</label></td>
                                <td><label><%=e.getNomeProprietario()%></label></td>
                            </tr>
                            <tr>
                                <td><label>CNPJ:</label></td>
                                <td><label><%=e.getCnpj()%></label></td>
                            </tr>
                            <tr>
                                <td><label>Endereço:</label></td>
                                <td><label><%=e.getEndereco()%></label></td>
                            </tr>                                
                            <tr>
                                <td><label>E-mail:</label></td>
                                <td><label><%=e.getEmail()%></label></td>
                            </tr>
                            <tr>
                                <td><label>Telefone:</label></td>
                                <td><label><%=e.getTelefone()%></label></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <input type="submit" name="RemoverEmpresa" value="Remover" style="width: 100%;"/>
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
                            <th>Nome da Empresa</th>
                            <th>Nome Fantasia</th>
                            <th>Nome do Proprietário</th>
                            <th>CNPJ</th>
                            <th>Endereço</th>
                            <th>E-mail</th>
                            <th>Telefone</th>
                            <td>
                                <form>
                                    <a href="CadastroEmpresas.jsp?novaEmpresa=1"><input type="button" value="Adicionar outra"/></a>
                                </form>
                            </td>
                        </tr>
                        <%
                            if (Db.getPessoa().isEmpty()) {
                        %><td colspan="4"><label>Não existe nenhum cadastro de pessoas.</label></td><%
                                    }
                        %>
                        <%for (Empresa e : Db.getEmpresas()) {%>
                        <tr>
                            <td><%= e.getNomeEmpresa()%></td>
                            <td><%= e.getNomeFantasia()%></td>
                            <td><%= e.getNomeProprietario()%></td>
                            <td><%= e.getCnpj()%></td>
                            <td><%= e.getEndereco()%></td>
                            <td><%= e.getEmail()%></td>
                            <td><%= e.getTelefone()%></td>
                            <%int i = Db.getEmpresas().indexOf(e);%>
                            <td>
                                <form method="POST">
                                    <a href="CadastroEmpresas.jsp?alterar=<%=i%>"><input type="button" value="Alterar"/></a>
                                    <a href="CadastroEmpresas.jsp?remover=<%=i%>"><input type="button" value="Remover"/></a>
                                </form>
                            </td>
                        </tr>
                    </table>
                        <%}%>
                        <br><!--Apenas para termos uma melhor visualização-->
                        </div>
                        </div>
                        </div>
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
                        </body>
                        </html>
