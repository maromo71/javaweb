
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulário de Envio</title>
    </head>
    <body>
        <h1>Cálculo do IMC</h1>
        
        <form action="mostraIMC.jsp">
            <p>
                Peso do Sujeito:
                <input type="text" name="txt_peso" />
            </p>
            <p>
                Altura do Sujeito:
                <input type="text" name="txt_altura" />
            </p>
            <p>
                <input type="submit" value="Enviar" />
            </p>
        </form>
    </body>
</html>
