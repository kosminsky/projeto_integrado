<%@ page import="java.util.ArrayList" %>
<%@ page import="models.Participante" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: ViniciusValente
  Date: 12/03/2020
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <title>Lista de Participantes</title>
    <%
        try {
            ArrayList<Participante> participantes = (ArrayList<Participante>) request.getAttribute("participantes");
            pageContext.setAttribute("participantes", participantes);
            boolean sucesso = (boolean)  request.getAttribute("sucesso");
            pageContext.setAttribute("sucesso", sucesso);
        } catch (Exception e) {
            out.print("<h1>" + e.getMessage() + "</h1>");
        }
    %>
</head>
<body>

    <h1> Lista de Participantes </h1>

    <table>

        <thead>
            <tr>
                <th> Index </th>
                <th> Nome </th>
                <th> Email </th>
                <th> CPF </th>
                <th> Endereço </th>
                <th> Telefone </th>
            </tr>
        </thead>

        <tbody>
            <c:forEach items="${participantes}" var="participante">
                <tr>
                    <td> <c:out value="${participantes.indexOf(participante)}"/> </td>
                    <td> <c:out value="${participante.nome}"/> </td>
                    <td> <c:out value="${participante.email}"/> </td>
                    <td> <c:out value="${participante.cpf}"/> </td>
                    <td> <c:out value="${participante.endereco}"/> </td>
                    <td> <c:out value="${participante.telefone}"/> </td>
                    <%-- implementar funcionalidade de excluir --%>
                    <td> <a href=""> excluir </a> </td>
                </tr>
            </c:forEach>
        </tbody>

    </table>

    <a href="${pageContext.request.contextPath}/participante/form"> Adicionar novo participante </a>

    <c:if test = "${sucesso}">
        <p><c:out value="Usuario cadastrado com sucesso"/><p>
    </c:if>
</body>
</html>
