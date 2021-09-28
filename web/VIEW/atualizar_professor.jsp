<%-- 
    Document   : atualizar_professor
    Created on : 16/09/2021, 15:32:00
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
        <h1>Atualizar professor</h1>
        <br>
        <br>
        <form method="post" action="../CRUD/update_professor.jsp">
            <table>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Senha</th>
                </tr>
                <tr>
                      <td><input type="number" name="professorId" value="<%=request.getParameter("professorId")%>" readonly></td>
                      <td><input type="text" name="professorNome" value="<%=request.getParameter("professorNome")%>" required></td>
                      <td><input type="email" name="professorEmail" value="<%=request.getParameter("professorEmail")%>" required></td>
                      <td><input type="text" name="professorSenha" value="<%=request.getParameter("professorSenha")%>" required</td>
                </tr>
            </table>
                <input type="submit" value="Atualizar">
                <a href="consultar_professor.jsp">Voltar</a>
        </form>
    </body>
</html>
