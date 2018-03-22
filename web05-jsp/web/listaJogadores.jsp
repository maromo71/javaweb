<%-- 
    Document   : listaJogadores
    Created on : 15/03/2018, 21:24:46
    Author     : maromo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*, dao.*, modelo.*"
        %>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Jogadores em JSP</title>
    </head>
    <body>
        <h1>Lista de Jogadores</h1>
        <table border="1" width="1">
            <thead>
                <tr>
                    <th>Nome do Jogador</th>
                    <th>Apelido do Jogador</th>
                    <th>Posição </th>
                    <th>Idade</th>
                </tr>
            </thead>
            <%
                JogadorDAO dao = new JogadorDAO();
                List<Jogador> lista = dao.listarJogadores();
                for (Jogador j : lista) {
            %>
            <tbody>
                <tr>
                    <td><%= j.getNome() %></td>
                    <td><%= j.getApelido()%></td>
                    <td><%= j.getPosicao()%></td>
                    <td><%= j.getIdade()%></td>
                </tr>
            </tbody>
             <% }%>
        </table>
    </body>
</html>
