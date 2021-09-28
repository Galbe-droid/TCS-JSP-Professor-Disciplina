<%-- 
    Document   : delete_disciplina
    Created on : 16/09/2021, 17:07:56
    Author     : gabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAODisciplina"%>
<%@page import="MODEL.Disciplina"%>

<%
    try{
        DAODisciplina daoDisciplina = new DAODisciplina();
        Disciplina disciplina = new Disciplina();
        
        disciplina.setId(Integer.parseInt(request.getParameter("disciplinaId")));
        disciplina.setNome(request.getParameter("disciplinaNome"));
        disciplina.setCargaHoraria(Integer.parseInt(request.getParameter("disciplinaCargaHoraria")));
        disciplina.setExcluido(10);
        
        daoDisciplina.deleteDisciplina(disciplina);        
        response.sendRedirect("../index.jsp");          
        
    }catch(Exception e)
    {
        throw new RuntimeException("Erro em delete_disciplina.jsp: " + e);
    }
%>
