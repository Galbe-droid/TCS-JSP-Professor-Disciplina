<%-- 
    Document   : create_disciplina
    Created on : 14/09/2021, 15:42:31
    Author     : gabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAODisciplina"%>
<%@page import="MODEL.Disciplina"%>

<%
    try{
        DAODisciplina daoDisciplina = new DAODisciplina();
        Disciplina disciplina = new Disciplina();
        
        disciplina.setNome(request.getParameter("disciplinaNome"));
        disciplina.setCargaHoraria(Integer.parseInt(request.getParameter("disciplinaCargaHoraria")));
        
        daoDisciplina.createDisciplina(disciplina);
        
        response.sendRedirect("../index.jsp");
        
    }catch(Exception e)
    {
        throw new RuntimeException("Erro em create_disciplina.jsp: " + e);
    }
%>