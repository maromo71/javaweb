<%-- 
    Document   : index
    Created on : 26/04/2018, 19:54:39
    Author     : maromo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="myTag" tagdir="/WEB-INF/tags/" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo Tags Personalizadas</title>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/start/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    </head>
    <body>
        <h1>Tags Personalizadas</h1>
        <form method="post">
            <p>
                <myTag:campoTexto id="txtNome" rotulo="Nome" />
            </p>
            <p>
                <myTag:campoData id="txtData" rotulo="Data Nascimento" />
            </p>
            <p>
                <input type="submit" value="Enviar" />
            </p>
        </form>
    </body>
</html>
