<%-- 
    Document   : inserirController
    Created on : 19/04/2018, 20:22:26
    Author     : maromo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*, dao.*, modelo.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" 
      xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserção</title>
    </head>
    <body>
        <jsp:useBean id="produto" class="modelo.Produto" />
        <jsp:useBean id="data" class="dao.ProdutoDAO" />

        <%
            produto.setNomeProduto(request.getParameter("nomeProduto"));
            
            String ativo = "";
            
            if(request.getParameter("ativo")==null){
                ativo="0";
            }else{
                ativo="1";
            }
            
            if(ativo.equals("1")){
                produto.setAtivo(true);
            }else{
                produto.setAtivo(false);
            }
            produto.setPreco(Double.parseDouble(request.getParameter("preco")));
            produto.setQtdEstoque(Integer.parseInt(request.getParameter("qtdEstoque")));
            produto.setPrincipalFornecedor(request.getParameter("principalFornecedor"));
            data.adicionar(produto);
        %>
    <c:redirect url="lista.jsp" />
    </body>
</html>
