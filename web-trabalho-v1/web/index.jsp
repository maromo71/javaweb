<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*, dao.*, modelo.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" 
      xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:import url="cabec.jsp" />
        <div class="container">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <a class="form-control btn btn-success" href="inserir.jsp" >Inserir</a>
                    <a class="form-control btn btn-default" href="lista.jsp" >Listar</a>
                </div>
                <div class="col-sm-4"></div>
            </div>
        </div>
        <br />
        <div class="container">
            <c:import url="rodape.jsp" />
        </div>
    </body>
</html>
