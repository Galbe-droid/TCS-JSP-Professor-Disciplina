<%-- 
    Document   : consultar_professor
    Created on : 15/09/2021, 18:26:25
    Author     : gabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOProfessor"%>
<%@page import="MODEL.Professor"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Consultar Professor</h1>
        <br>
        <br>
        <form method="post" action="consultar_professor.jsp">
            <input type="text" name="nomeProfessor">
            <input type="submit" value="Pesquisar">
        </form>        
        <br>
        <br>        
        <table border=1>
            <thead>
                <tr>
                    <td>ID</td>
                    <td align="center">Disciplina</td>
                    <td>Email</td>
                    <td>Senha</td>
                    <td colspan="2" align="center">Opções</td>
                </tr>
            </thead>
            <tbody>
                <%
                    DAOProfessor professorDAO = new DAOProfessor();
                    ArrayList<Professor> lista = professorDAO.readProfessor();
                    if(request.getParameter("nomeProfessor") == "" || request.getParameter("nomeProfessor") == null)
                    {
                        for (int i = 0; i < 10; i++) {
                            if(i < lista.size())
                            {
                                if(lista.get(i).getExcluido() == 0)
                                {
                                    out.print("<tr>");
                                    out.print("<td>"+lista.get(i).getId()+"</td>");
                                    out.print("<td>"+lista.get(i).getNome()+"</td>");
                                    out.print("<td>"+lista.get(i).getEmail()+"</td>");
                                    out.print("<td>"+lista.get(i).getSenha()+"</td>");
                                    out.print("<td><a href='atualizar_professor.jsp?professorId=" + lista.get(i).getId()
                                                                    + "&professorNome=" + lista.get(i).getNome()
                                                                    + "&professorEmail=" + lista.get(i).getEmail()
                                                                    + "&professorSenha=" + lista.get(i).getSenha()
                                                                    + "'>Editar</a></td>");
                                    out.print("<td><a href='deletar_professor.jsp?professorId=" + lista.get(i).getId()
                                                                    + "&professorNome=" + lista.get(i).getNome()
                                                                    + "&professorEmail=" + lista.get(i).getEmail()
                                                                    + "&professorSenha=" + lista.get(i).getSenha()
                                                                    + "'>Excluir</a></td>");
                                    out.print("</tr>");
                                }                                
                            }
                            else
                            {
                                out.print("<tr>");
                                    out.print("<td><p></p></td>");
                                    out.print("<td></td>");
                                    out.print("<td></td>");
                                    out.print("<td></td>");
                                    out.print("<td></td>");
                                    out.print("<td></td>");
                                out.print("</tr>");
                            }
                        }
                    }
                    else 
                    {
                        ArrayList<Professor> listaNome = professorDAO.readProfessorByName(request.getParameter("nomeProfessor"));
                        for (int i = 0; i < lista.size(); i++) {
                            if(lista.get(i).getExcluido() == 0)
                            {
                            out.print("<tr>");
                                out.print("<td>"+listaNome.get(i).getId()+"</td>");
                                out.print("<td>"+listaNome.get(i).getNome()+"</td>");
                                out.print("<td>"+lista.get(i).getEmail()+"</td>");
                                    out.print("<td>"+lista.get(i).getSenha()+"</td>");
                                    out.print("<td><a href='atualizar_professor.jsp?professorId=" + lista.get(i).getId()
                                                                    + "&professorNome=" + lista.get(i).getNome()
                                                                    + "&professorEmail=" + lista.get(i).getEmail()
                                                                    + "&professorSenha=" + lista.get(i).getSenha()
                                                                    + "'>Editar</a></td>");
                                    out.print("<td><a href='deletar_professor.jsp?professorId=" + lista.get(i).getId()
                                                                    + "&professorNome=" + lista.get(i).getNome()
                                                                    + "&professorEmail=" + lista.get(i).getEmail()
                                                                    + "&professorSenha=" + lista.get(i).getSenha()
                                                                    + "'>Excluir</a></td>");
                                    out.print("</tr>");
                            }
                        }
                    }
                %>
            </tbody>
        </table>
    </body>
</html>
