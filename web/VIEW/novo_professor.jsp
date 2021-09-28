<%-- 
    Document   : novo_professor
    Created on : 15/09/2021, 12:09:46
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
        <h1>Novo Professor</h1>
        <br>
        <br>
        <form action="../CRUD/create_professor.jsp" method="post">
            <table>
                <thead>
                    <tr>
                        <td>Nome</td>
                        <td>Email</td>
                        <td>Senha</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="text" placeholder="Nome" name="professorNome" required></td>
                        <td><input type="email" placeholder="Email" name="professorEmail" required></td>
                        <td><input type="text" placeholder="senha" name="professorSenha" required></td>                        
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
