<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*, dao.*, modelo.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP / JSTL Page</title>
    </head>
    <body>
        <c:import url="cabecalho.jsp" />
        <h1>Lista de Jogadores</h1>
        <jsp:useBean id="dao" class="dao.JogadorDAO" />
        <table border="0">
            <tr>
                <th>Nome do Jogador</th>
                <th>Apelido</th>
                <th>Posição</th>
                <th>Idade</th>
            </tr>
            <!-- Usarem uma taglib para realizar um for each -->
            <c:forEach var="jogador" items="${dao.listarJogadores()}">
                <tr>
                    <td>${jogador.nome}</td>
                    <td>${jogador.apelido}</td>
                    <td>${jogador.posicao}</td>
                    <td>${jogador.idade}
                        <c:if test="${jogador.idade >=40}">
                            - Fazer novo exame     
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <c:import url="rodape.jsp"/>
</body>
</html>
