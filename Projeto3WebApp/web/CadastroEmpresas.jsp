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
        <title>Projeto 3 | Empresas</title>
    </head>
    <body>
        <div id="conteudo">
            <div id="principal">
                <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
                <div style="border: solid 1px red;">
                    <!--form e lógica para inserção de dados das empresas-->
                    <label>Cadastro de Empresas</label><br><br>
                    <%
            if(request.getParameter("novoContato")!=null){
                String nomeEmpresa = request.getParameter("nomeEmpresa");
                String nomeFantasia = request.getParameter("nomeFantasia");
                String nomeProprietario = request.getParameter("nomeProprietario");
                String cnpj = request.getParameter("cnpj");
                String endereco = request.getParameter("endereco");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                Empresa c = new Empresa();
                c.setDados(nomeEmpresa, nomeFantasia, nomeProprietario, cnpj, endereco, email, telefone);
                //Db.getContatos().add(c);
                response.sendRedirect("home.jsp");
            }
        %>
            <form>
                Nome da Empresa:<br/><input type="text" name="nomeEmpresa" required/><br/>
                Nome Fantasia:<br/><input type="text" name="nomeFantasia" required/><br/>
                Nome do Proprietário:<br/><input type="text" name="nomeProprietario" required/><br/>
                CNPJ:<br/><input type="text" name="cnpj" required/><br/>
                Endereço:<br/><input type="text" name="endereco" required/><br/>
                E-mail:<br/><input type="text" name="email" required/><br/>
                Telefone:<br/><input type="text" name="telefone" required/><br/>
                <br/><input type="submit" name="novaEmpresa" value="Incluir">
            </form>
            
            <!--form e lógica para alteração de dados-->
            <%
        int i = Integer.parseInt(request.getParameter("i"));
        Empresa e = Db.getContatos().get(i);
    %>
    <body>
        <h1>Cadastro de Contatos</h1>
        <h2>Alterar</h2>
        <%
            if(request.getParameter("alterarContato")!=null){
                c.setNome(request.getParameter("nome"));
                c.setEmail(request.getParameter("email"));
                c.setTelefone(request.getParameter("telefone"));
                Db.getContatos().set(i, c);
                response.sendRedirect("home.jsp");
            }
        %>
        <form>
            Índice: <%= i%><br/><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Nome:<br/><input type="text" name="nome" value="<%=c.getNome()%>" required/><br/>
            E-mail:<br/><input type="text" name="email" value="<%=c.getEmail()%>" required/><br/>
            Telefone:<br/><input type="text" name="telefone" value="<%=c.getTelefone()%>" required/><br/>
            <br/><input type="submit" name="alterarContato" value="Alterar">
        </form>
            
                    <div style="border: solid 1px blue;">
                        <label>Formulário para a entrada de dados.</label>
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
