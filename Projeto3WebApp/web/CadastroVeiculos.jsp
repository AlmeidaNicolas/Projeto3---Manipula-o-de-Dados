<%-- 
    Document   : CadastroVeiculos
    Created on : 07/10/2018, 18:20:51
    Author     : Leona
--%>
<%@page import="br.com.fatecpg.manutencaoCadastro.Db"%>
<%@page import="br.com.fatecpg.manutencaoCadastro.Veiculo"%>
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
                <div id="areaConteudo" >
                    
                    <div class="bloco" id="formulario">
                    <% 
                      if(request.getParameter("Adicionar")!=null){  
                      if(request.getParameter("btAdicionar")!= null){
                        String placa = request.getParameter("placa");
                        String marca = request.getParameter("marca");
                        String modelo = request.getParameter("modelo");
                        String cor = request.getParameter("cor");
                        Veiculo v = new Veiculo();
                        v.setDados(placa, marca, modelo, cor);
                        Db.getVeiculo().add(v);
                        response.sendRedirect("CadastroVeiculos.jsp");
            
                        }
                      %>
        
                        
                        <form method="POST">
                            <p>ADICIONAR</p>
                            <table>
                                <tr>
                                    <td><label>Placa:</label></td>
                                    <td><input type="text" name="placa"></td>
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
                                        <input type="submit" name="btAdicionar" value="Adicionar"> 
                                        
                                    </td>
                                </tr>
                            </table>
                        </form>
                        <%}%>
                        <!--ALTERAR-->
                        
                        <%
                            if(request.getParameter("Alterar")!=null){
                            int i = Integer.parseInt(request.getParameter("Alterar"));
                            Veiculo v = Db.getVeiculo().get(i);
                            
                            if(request.getParameter("btAlterar")!=null){
                            v.setPlaca(request.getParameter("placa"));
                            v.setMarca(request.getParameter("marca"));
                            v.setModelo(request.getParameter("modelo"));
                            v.setCor(request.getParameter("cor"));
                            Db.getVeiculo().set(i,v);
                            response.sendRedirect("CadastroVeiculos.jsp");
                            }
                        %>
                        <form method="POST">
                            
                            <p>ALTERAR</p>
                            <table>
                                <tr>
                                    <td><label>Placa:</label></td>
                                    <td><input type="text" name="placa" value="<%=v.getPlaca()%>"></td>
                                </tr>
                                <tr>
                                    <td><label>Marca:</label></td>
                                    <td><input type="text" name="marca" value="<%=v.getMarca()%>"></td>
                                </tr>
                                <tr>
                                    <td><label>Modelo:</label></td>
                                    <td><input type="text" name="modelo" value="<%=v.getModelo()%>"></td>
                                </tr>
                                <tr>
                                    <td><label>Cor:</label></td>
                                    <td><input type="text" name="cor" value="<%=v.getCor()%>"></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="submit" name="btAlterar" value="Alterar"> 
                                        
                                    </td>
                                </tr>
                            </table>
                        </form>
                        <%}%>
                        <!--REMOVER-->
                        
                        <%if(request.getParameter("Remover")!=null){
                            int i = Integer.parseInt(request.getParameter("Remover"));
                            Veiculo v = Db.getVeiculo().get(i);
                            if(request.getParameter("btRemover")!=null){
                                Db.getVeiculo().remove(v);
                                response.sendRedirect("CadastroVeiculos.jsp");
                            }
                        %>
                        <form method="POST">
                            
                            <p>REMOVER</p>
                            
                            <input type="hidden" name="i" value="<%=i%>"/>
                            
                            <table>
                                <tr>
                                    <td><label>Placa:</label></td>
                                    <td><labe><%=v.getPlaca()%></labe></td>
                                </tr>
                                <tr>
                                    <td><label>Marca:</label></td>
                                    <td><label><%=v.getMarca()%></label></td>
                                </tr>
                                <tr>
                                    <td><label>Modelo:</label></td>
                                    <td><label><%=v.getModelo()%></label></td>
                                </tr>
                                <tr>
                                    <td><label>Cor:</label></td>
                                    <td><label><%=v.getCor()%></label></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="submit" name="btRemover" value="Remover"> 
                                        
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
                                <th>Placa</th>
                                <th>Marca</th>
                                <th>Modelo</th>
                                <th>Cor</th>
                                <td>
                                    <form>
                                        <a href="CadastroVeiculos.jsp?Adicionar=1"><input type="button" value="Adicionar outro"/></a>
                                    </form>
                                </td>
                            </tr>
                           <%for (Veiculo v: Db.getVeiculo()){%>
                           <tr>
                               <td><%= v.getPlaca()%></td>
                               <td><%= v.getMarca()%></td>
                               <td><%= v.getModelo()%></td>
                               <td><%= v.getCor()%></td>
                               <%int i = Db.getVeiculo().indexOf(v);%>
                               <td>
                                    <form method="POST">
                                        <a href="CadastroVeiculos.jsp?Alterar=<%=i%>"><input type="button" value="Alterar"/></a>
                                        <a href="CadastroVeiculos.jsp?Remover=<%=i%>"><input type="button" value="Remover"/></a>
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
