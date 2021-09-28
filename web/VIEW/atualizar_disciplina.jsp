<%-- 
    Document   : atualizar_disciplina
    Created on : 16/09/2021, 14:05:38
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
        <h1>Atualizar Disciplina</h1>
        <br>
        <br>
        <form method="post" action="../CRUD/update_disciplina.jsp">
            <table>
                <tr>
                    <th>Id</th>
                    <th>Disciplina</th>
                    <th>Carga Horaria</th>
                </tr>
                <tr>
                    <td><input type="number" name="disciplinaId" value="<%=request.getParameter("disciplinaId")%>" readonly></td>
                    <td><input type="text" name="disciplinaNome" value="<%=request.getParameter("disciplinaNome")%>" required</td>
                    <td><input type="text" name="disciplinaCargaHoraria" value="<%=request.getParameter("disciplinaCargaHoraria")%>" required</td>
                </tr>
            </table> 
                <input type="submit" value="Atualizar">
                <a href="consultar_disicplina.jsp">Voltar</a>
        </form>
    </body>
</html>
