<%-- 
    Document   : mostraIMC
    Created on : 22/03/2018, 20:20:33
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
        <h1>Resultado do IMC com base ${param.txt_peso}</h1>
        
        <%
            Double peso = Double.parseDouble(request.getParameter("txt_peso"));
            Double altura = Double.parseDouble(request.getParameter("txt_altura"));
            Double imc = peso / Math.pow(altura, 2);
            out.println("<h2>Resultado: " + imc + "</h2>");
        %>
            
    </body>
</html>
