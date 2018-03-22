<%-- 
    Document   : saudacao
    Created on : 15/03/2018, 21:09:08
    Author     : maromo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Olá amigos</h1>
        <%
            String mensagem = "Sejam todos benvindos<br />By Maromo";
            out.println(mensagem + "<p></p>");
        %>
        <%-- Outra forma de exibir a mensagem --%>
        <%-- Comentário em jsp --%>
        <%=mensagem%>
        <%
            double raio = 10.0;
            double areaCirculo = Math.PI * (Math.pow(raio, 2.0));
            mensagem = "Área da circunferência, cujo raio seja = a 10: " + areaCirculo;
            out.println("<p>" + mensagem + "</p>");
        %>
    </body>
</html>
