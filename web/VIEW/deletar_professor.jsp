<%-- 
    Document   : deletar_professor
    Created on : 16/09/2021, 17:20:10
    Author     : gabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Excluir Dsiciplina</h1>
        <form action="../CRUD/delete_professor.jsp" method="post">
            <table>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Senha</th>
                </tr>
                <tr>
                    <td><input type="number" name="professorId" value="<%=request.getParameter("professorId")%>" readonly></td>
                    <td><input type="text" name="professorNome" value="<%=request.getParameter("professorNome")%>" readonly></td>
                    <td><input type="email" name="professorEmail" value="<%=request.getParameter("professorEmail")%>" readonly></td>
                    <td><input type="senha" name="professorSenha" value="<%=request.getParameter("professorSenha")%>" readonly></td>
                </tr>
            </table>
                <input type="submit" value="Deletar">
                <a href="consultar_professor.jsp">Voltar</a>
        </form>
    </body>
</html>
