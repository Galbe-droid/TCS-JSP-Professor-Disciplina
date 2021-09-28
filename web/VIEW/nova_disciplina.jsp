<%-- 
    Document   : nova_disciplina
    Created on : 14/09/2021, 15:09:49
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
        <h1>Inserir Disciplina</h1>
        
        <form action="../CRUD/create_disciplina.jsp" method="post">
            <table>
                <thead>
                    <tr>
                        <td>Nome</td>
                        <td>Carga Horaria</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="text" placeholder="Nome" name="disciplinaNome" required></td>
                        <td><input type="text" placeholder="Em Horas" name="disciplinaCargaHoraria" required></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="SALVAR">
            <br>
            <br>
            <a href="../index.jsp" id="returnButton">VOLTAR</a>
        </form>
    </body>
</html>
