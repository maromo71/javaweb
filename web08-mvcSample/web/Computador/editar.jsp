<%@page contentType="text/html" 
        pageEncoding="UTF-8"
        import="java.util.*, br.edu.faculdade.mvcsample.controller.*"
        %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Dados do Computador</title>
    </head>
    <body>
        <c:import url="../cabec.jsp"></c:import>
        <jsp:useBean id="controller" 
                     class="br.edu.faculdade.mvcsample.controller.ComputadorController" />
        <div class="container">
            <h1>Alterar Dados Computador</h1>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-8">
                    <form action="ComputadorController?cmd=alterar" method="post"> 
                        <div hidden="true" class="form-group">
                            <label for="txtIdComputador">Id Computador:</label>
                            <input class="form-control" 
                                   type="text" id="txtIdComputador" name="txtIdComputador" 
                                   value="${txtIdComputador}" />
                        </div>

                        <div class="form-group">
                            <label for="txtDescricao">Descrição:</label>
                            <input class="form-control" 
                                   type="text" id="txtDescricao" name="txtDescricao" 
                                   value="${txtDescricao}" />
                        </div>
                        <div class="form-group">
                            <label for="txtMarca">Marca: </label>
                            <input class="form-control" 
                                   type="text" id="txtMarca" name="txtMarca" 
                                   value="${txtMarca}" />
                        </div>
                        <div class="form-group">
                            <label for="txtPreco">Preço: </label>
                            <input class="form-control" 
                                   type="text" id="txtPreco" name="txtPreco" 
                                   value="${txtPreco}" />
                        </div>
                        <div class="form-group">
                            <label for="txtMemoria">Memória: </label>
                            <input class="form-control" 
                                   type="text" id="txtMemoria" name="txtMemoria" 
                                   value="${txtMemoria}" />
                        </div>
                        <div>
                            <input class="btn btn-default" type="submit" 
                                   id="btnEnviar" name="btnEnviar" value="Enviar" />     
                            <input class="btn btn-default" type="reset" 
                                   id="btnLimpar" name="btnLimpar" value="Limpar" />     
                        </div>
                    </form>
                </div>
                <div class="col-lg-2"></div>
            </div>
        </div>
        <c:import url="../rodape.jsp"></c:import>
    </body>
</html>
