
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

    <title>Cadastro de Participante</title>

</head>
<body>

    <form method="post" action="${pageContext.request.contextPath}/participante/adiciona">

        <table>

            <tr>
                <td> Nome: </td> <td> <input name="nome" type="text"> </td>
            </tr>

            <tr>
                <td> Cpf: </td> <td> <input name="cpf" type="text"> </td>
            </tr>

            <tr>
                <td> Endereco: </td> <td> <input name="endereco" type="text"> </td>
            </tr>

            <tr>
                <td> Telefone: </td> <td> <input name="telefone" type="text"> </td>
            </tr>

            <tr>
                <td> Email: </td> <td> <input name="email" type="text"> </td>
            </tr>

        </table>

        <input type="submit" value="confirmar">

    </form>

</body>
</html>
