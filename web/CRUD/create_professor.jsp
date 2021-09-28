<%-- 
    Document   : create_professor
    Created on : 15/09/2021, 18:15:51
    Author     : gabri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOProfessor"%>
<%@page import="MODEL.Professor"%>

<%
    try{
        DAOProfessor daoProfessor = new DAOProfessor();
        Professor professor = new Professor();
        
        professor.setNome(request.getParameter("professorNome"));
        professor.setEmail(request.getParameter("professorEmail"));
        professor.setSenha(request.getParameter("professorSenha"));
        
        daoProfessor.createProfessor(professor);
        
        response.sendRedirect("../index.jsp");
        
    }catch(Exception e)
    {
        throw new RuntimeException("Erro em create_professor.jsp: " + e);
    }
%>