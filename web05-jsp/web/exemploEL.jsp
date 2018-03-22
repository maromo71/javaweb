<%-- 
    Document   : exemploEL
    Created on : 15/03/2018, 22:11:27
    Author     : maromo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EL - Exemplo</title>
    </head>
    <body>
        <h1>IMC</h1>
        <form action="mostraIMC.jsp">
            <p>Digite seu peso: <br />
                <input type="text" name="txt_peso" />
            </p>
             <p>Digite sua altura em metros: <br />
                <input type="text" name="txt_altura" />
            </p>
             <p> 
                <input type="submit" value="Enviar" />
            </p>
        </form>
    </body>
</html>
