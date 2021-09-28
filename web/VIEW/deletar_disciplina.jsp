<%-- 
    Document   : deletar_disciplina
    Created on : 16/09/2021, 17:00:05
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
        <form action="../CRUD/delete_disciplina.jsp" method="post">
            <table>
                <tr>
                    <th>Id</th>
                    <th>Disciplina</th>
                    <th>Carga Horaria</th>
                </tr>
                <tr>
                    <td><input type="number" name="disciplinaId" value="<%=request.getParameter("disciplinaId")%>" readonly></td>
                    <td><input type="text" name="disciplinaNome" value="<%=request.getParameter("disciplinaNome")%>" readonly></td>
                    <td><input type="text" name="disciplinaCargaHoraria" value="<%=request.getParameter("disciplinaCargaHoraria")%>" readonly></td>
                </tr>
            </table>
                <input type="submit" value="Deletar">
                <a href="consultar_disicplina.jsp">Voltar</a>
        </form>
    </body>
</html>
