<%--
  Created by IntelliJ IDEA.
  User: ViniciusValente
  Date: 12/03/2020
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Cadastro de Participante</title>

</head>
<body>

    <form method="post" action="${pageContext.request.contextPath}/participante/adiciona">

        Nome: <input name="nome" type="text"> <br/>
        Cpf: <input name="cpf" type="text"> <br/>
        Endereco: <input name="endereco" type="text"> <br/>
        Telefone: <input name="telefone" type="text"> <br/>
        Email: <input name="email" type="text"> <br/>
        <input type="submit" value="confirmar">

    </form>

</body>
</html>
