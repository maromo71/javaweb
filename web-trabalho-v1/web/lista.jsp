<%-- 
    Document   : lista
    Created on : 19/04/2018, 20:22:52
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
        <title>Lista de Produtos</title>
    </head>
    <body>
        <c:import url="cabec.jsp" />

        <div class="container">
            <h1>Lista de Produtos</h1>
        </div>

        <jsp:useBean id="data" class="dao.ProdutoDAO" />
        <div class="container">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nome</th>
                        <th>Ativo</th>
                        <th>Preço</th>
                        <th>Qtd Estoque</th>
                        <th>Fornecedor</th>
                    </tr>
                </thead>
                <!--percorre contatos montando as linhas da tabela -->
                <c:forEach var="produto" items="${data.listarProdutos()}">
                    <tbody>
                        <tr>
                            <td>${produto.idProduto}</td>
                            <td>${produto.nomeProduto}</td>
                            <td>
                                <c:if test="${produto.ativo == true}">
                                    Verdadeiro
                                </c:if>
                                <c:if test="${produto.ativo == false}">
                                    Falso
                                </c:if>
                            </td>
                            <td>${produto.preco}</td>
                            <td>${produto.qtdEstoque}</td>
                            <td>${produto.principalFornecedor}</td>
                        </tr>
                    </tbody>
                </c:forEach>
            </table>
        </div>
        <div class="container">
            <c:import url="rodape.jsp" /> 
        </div>
    </body>
</html>
