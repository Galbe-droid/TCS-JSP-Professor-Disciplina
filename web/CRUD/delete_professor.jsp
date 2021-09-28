<%-- 
    Document   : delete_professor
    Created on : 16/09/2021, 17:34:38
    Author     : gabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOProfessor"%>
<%@page import="MODEL.Professor"%>

<%
    try{
        DAOProfessor daoProfessor = new DAOProfessor();
        Professor professor = new Professor();
        
        professor.setId(Integer.parseInt(request.getParameter("professorId")));
        professor.setNome(request.getParameter("professorNome"));
        professor.setEmail(request.getParameter("professorEmail"));
        professor.setSenha(request.getParameter("professorSenha"));
        professor.setExcluido(10);
        
        daoProfessor.deleteProfessor(professor);
        response.sendRedirect("../index.jsp"); 
        
    }catch(Exception e)
    {
        throw new RuntimeException("Erro em deletar_professor.jsp: " + e);
    }
%>
