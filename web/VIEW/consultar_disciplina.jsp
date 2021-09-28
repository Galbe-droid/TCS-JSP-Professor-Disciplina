<%-- 
    Document   : consultar_disciplina
    Created on : 14/09/2021, 16:28:28
    Author     : gabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAODisciplina"%>
<%@page import="MODEL.Disciplina"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Disciplinas</h1>
        <br>
        <br>
        <form method="post" action="consultar_disciplina.jsp">
            <input type="text" name="nomeDisciplina">
            <input type="submit" value="Pesquisar">
        </form>        
        <br>
        <br>        
        <table border=1>
            <thead>
                <tr>
                    <td>ID</td>
                    <td align="center">Disciplina</td>
                    <td>Carga Horaria</td>
                    <td colspan="2" align="center">Opções</td>
                </tr>
            </thead>
            <tbody>
                <%
                    DAODisciplina daoDisciplina = new DAODisciplina();
                    
                    if(request.getParameter("nomeDisciplina") == "" || request.getParameter("nomeDisciplina") == null)
                    {
                        ArrayList<Disciplina> lista = daoDisciplina.readDisciplina();
                        for (int i = 0; i < 10; i++) {
                            if(i < lista.size())
                            {
                                if(lista.get(i).getExcluido() == 0)
                                {
                                    out.print("<tr>");
                                    out.print("<td>"+lista.get(i).getId()+"</td>");
                                    out.print("<td>"+lista.get(i).getNome()+"</td>");
                                    out.print("<td  align='right'>"+lista.get(i).getCargaHoraria()+"</td>");
                                    out.print("<td><a href='atualizar_disciplina.jsp?disciplinaId=" + lista.get(i).getId()
                                                                    + "&disciplinaNome=" + lista.get(i).getNome()
                                                                    + "&disciplinaCargaHoraria=" + lista.get(i).getCargaHoraria()
                                                                    + "'>Editar</a></td>");
                                    out.print("<td><a href='deletar_disciplina.jsp?disciplinaId=" + lista.get(i).getId()
                                                                    + "&disciplinaNome=" + lista.get(i).getNome()
                                                                    + "&disciplinaCargaHoraria=" + lista.get(i).getCargaHoraria()
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
                                out.print("</tr>");
                            }
                        }
                    }
                    else 
                    {
                        ArrayList<Disciplina> lista = daoDisciplina.readDisciplinaByName(request.getParameter("nomeDisciplina"));
                        for (int i = 0; i < lista.size(); i++) {
                        if(lista.get(i).getExcluido() == 0)
                        {
                            out.print("<tr>");
                                out.print("<td>"+lista.get(i).getId()+"</td>");
                                out.print("<td>"+lista.get(i).getNome()+"</td>");
                                out.print("<td>"+lista.get(i).getCargaHoraria()+"</td>");
                                out.print("<td><a href='atualizar_disciplina.jsp?disciplinaId=" + lista.get(i).getId()
                                                                    + "&disciplinaNome=" + lista.get(i).getNome()
                                                                    + "&disciplinaCargaHoraria=" + lista.get(i).getCargaHoraria()
                                                                    + "'>Editar</a></td>");
                                out.print("<td><a href='deletar_disciplina.jsp?disciplinaId=" + lista.get(i).getId()
                                                                    + "&disciplinaNome=" + lista.get(i).getNome()
                                                                    + "&disciplinaCargaHoraria=" + lista.get(i).getCargaHoraria()
                                                                    + "'>Excluir</a></td>");
                        }               
                    } 
                        
                    }                    
                %>             
            </tbody>
        </table>
    </body>
</html>
