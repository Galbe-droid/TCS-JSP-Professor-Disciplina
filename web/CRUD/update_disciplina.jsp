<%-- 
    Document   : update_disciplina
    Created on : 16/09/2021, 14:20:42
    Author     : gabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAODisciplina"%>
<%@page import="MODEL.Disciplina"%>


<%
    try{
        Disciplina disciplina = new Disciplina();
        DAODisciplina daoDisciplina = new DAODisciplina();
        
        disciplina.setId(Integer.parseInt(request.getParameter("disciplinaId")));
        disciplina.setNome(request.getParameter("disciplinaNome"));
        disciplina.setCargaHoraria(Integer.parseInt(request.getParameter("disciplinaCargaHoraria")));
        
        daoDisciplina.updateDisciplina(disciplina);
        
        response.sendRedirect("../index.jsp");
        
    }catch(Exception e)
    {
        throw new RuntimeException("Erro em update_disciplina.jsp: " + e);
    }
%>