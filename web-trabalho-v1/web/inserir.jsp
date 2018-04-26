<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*, dao.*, modelo.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" 
      xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Novo Produto</title>
    </head>
    <body>
        <c:import url="cabec.jsp" />
        <div class="container">
            <h1>Adicionar Produtos</h1>
            <jsp:useBean id="data" class="dao.ProdutoDAO" />
            <div class="container">
                <div class="row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4">
                        <form class="" method="POST" action="inserirController.jsp">
                            <div class="form-group">
                                <p>Nome Produto
                                    <input class="form-control" type="text" name="nomeProduto" value="" />
                                </p>
                            </div>
                            <div class="form-group">
                                <p>Ativo?
                                    <input type="checkbox" name="ativo" value="1" />
                                </p>
                            </div>
                            <div class="form-group">
                                <p>Preço
                                    <input class="form-control" type="text" name="preco" value="" />
                                </p>
                            </div>
                            <div class="form-group">
                                <p>Qtd Estoque
                                    <input class="form-control" type="number" name="qtdEstoque" value="" />
                                </p>
                            </div>
                            <div class="form-group">
                                <p>Principal Fornecedor
                                    <input  class="form-control" type="text" name="principalFornecedor" value="" />
                                </p>
                            </div>
                            <div class="form-group">
                                <p>
                                    <input class="form-control btn btn-success" type="submit" value="Enviar"/>
                                    <input class="form-control btn btn-default" type="reset" value="Limpar"/>
                                </p>
                            </div>

                    </div>
                    <div class="col-sm-4"></div>
                </div>
            </div>
    </body>
    <c:import url="rodape.jsp" />
</html>
