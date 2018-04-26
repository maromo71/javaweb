<%-- 
    Document   : campoTexto
    Created on : 26/04/2018, 19:36:48
    Author     : maromo
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="id"%>
<%@attribute name="rotulo"%>
<%-- any content can be specified here e.g.: --%>
<label for="${id}">${rotulo}</label>
<input type="text" id="${id}" name="${id}" />

