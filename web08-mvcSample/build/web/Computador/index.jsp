<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Computadores</title>
    </head>
    <body>
        <c:import url="../cabec.jsp"></c:import>
            <div class="container">
                <h1>Manutenção Cadastro - Computadores</h1>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-4"></div>
                    <div class="col-lg-4">
                        <p>
                            <a href="listar.jsp" class="btn btn-default btn-block">
                                Listar
                            </a>
                        </p>
                        <p></p>
                        <p>
                            <a href="adicionar.jsp" class="btn btn-default btn-block">
                                Novo Computador
                            </a>
                        </p>
                    </div>
                    <div class="col-lg-4"></div>
                </div>
            </div>
       <script>
                var msg = "${msg}";
                if (msg.length > 0)
                    alert("Mensagem: " + msg);
        </script>

        <c:import url="../rodape.jsp"></c:import>
    </body>
</html>
