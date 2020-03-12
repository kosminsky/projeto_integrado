<%--
  Created by IntelliJ IDEA.
  User: ViniciusValente
  Date: 12/03/2020
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Erro</title>
</head>
<body>
    <%
        try {
            int status;
            status = (int) request.getAttribute("status");

            if (status < 600 && status > 99) {
                out.println("<h2>" + status + "</h2>");
            }

            String erro;
            erro = (String) request.getAttribute("mensagem");

            if (erro == null || erro.equals("")) {
                out.println("<h1> Erro inesperado </h1>");
            } else {
                out.println("<h1>" + erro + "</h1>");
            }

        } catch (Exception e) {
            out.println("<h2> 500 </h2>");
            out.println("<h2> Exceção lancada ao tentar exibir mensagem de erro </h2>");
            out.println("<h1>" + e.getMessage() + "</h1>");
        }
    %>
</body>
</html>
