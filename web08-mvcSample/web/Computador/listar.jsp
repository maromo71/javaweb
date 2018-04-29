<%@page contentType="text/html" 
        pageEncoding="UTF-8"
        import="java.util.*, br.edu.faculdade.mvcsample.model.dao.*, 
        br.edu.faculdade.mvcsample.model.entity.*"
        %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Produtos</title>
    </head>
    <body>
        <c:import url="../cabec.jsp" />
        <div class="container">
            <h1>Lista de Produtos</h1>
        </div>
        <jsp:useBean id="data" class="br.edu.faculdade.mvcsample.model.dao.ComputadorDao" />
        <div class="container">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Id do Produto</th>
                        <th>Descrição</th>
                        <th>Marca </th>
                        <th>Qtd Memória</th>
                        <th>Preço</th>
                        <th colspan="2">Opções</th>
                    </tr>
                </thead>
                <!--percorre contatos montando as linhas da tabela -->
                <c:forEach var="comp" items="${data.listar()}">
                    <tbody>
                        <tr>
                            <td>${comp.idComputador}</td>
                            <td>${comp.descricao}</td>
                            <td>${comp.marca}</td>
                            <td>${comp.qtdMemoria}</td>
                            <td>${comp.preco}</td>
                            <td>
                                <a href="ComputadorController?cmd=editar&id=${comp.idComputador}">
                                    Alterar
                                </a>
                            </td>
                            <td>
                                <a href="ComputadorController?cmd=excluir&id=${comp.idComputador}">
                                    Excluir
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </c:forEach>
            </table>
        </div>
        <script>
            var msg = "${msg}";
            if(msg.length>0) alert("Mensagem: " + msg);
        </script>
        <c:import url="../rodape.jsp" /> 
    </body>
</html>
