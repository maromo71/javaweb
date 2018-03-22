<%-- 
    Document   : mostraIMC
    Created on : 15/03/2018, 22:14:34
    Author     : maromo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado do IMC</title>
    </head>
    <body>
        <h1>IMC - Resultado</h1>
        <p>
            Seu imc calculado pode ser visto abaixo:
        </p>
        <% 
            double peso = Double.parseDouble(request.getParameter("txt_peso"));
            double alt = Double.parseDouble(request.getParameter("txt_altura"));
            double imc = peso / Math.pow(alt, 2.0);
        %>
        <p>IMC = <%= imc %></p>
    </body>
</html>
