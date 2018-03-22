<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*, dao.*, modelo.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <h1>Jogadores</h1>
        <table border="0">
            <tr>
                <th>Nome do Jogador</th>
                <th>Apelido</th>
                <th>Posição</th>
                <th>Idade</th>
            </tr>
            <%
                JogadorDAO dao = new JogadorDAO();
                List<Jogador> lista = dao.listarJogadores();
                for (Jogador jogador : lista) {
                        
                
            %>
            <tr>
                <td><%= jogador.getNome()%></td>
                <td><%= jogador.getApelido()%></td>
                <td><%= jogador.getPosicao()%></td>
                <td><%= jogador.getIdade()%></td>
            </tr>
            <% } %>
        </tbody>
    </table>

</body>
</html>
