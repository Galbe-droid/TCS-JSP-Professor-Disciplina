/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import DAO.Connect;
import MODEL.Professor;
import java.util.ArrayList;
import java.sql.*;
/**
 *
 * @author gabri
 */
public class DAOProfessor {
    private Statement state;
    private ResultSet result;
    private PreparedStatement pst;
    private Connection con;
    private ArrayList<Professor> professorLista = new ArrayList<>();
    
    public DAOProfessor()
    {
        con = new Connect().getConnection();
    }  
    
    public void createProfessor(Professor prof)
    {
        String sql = "INSERT INTO tb_professor (nome_professor, email_professor, senha_professor, excluido_professor) VALUES (?,?,?,?)";
        
        try{
            pst = con.prepareStatement(sql);
            pst.setString(1, prof.getNome());
            pst.setString(2, prof.getEmail());
            pst.setString(3, prof.getSenha());
            pst.setInt(4, 0);
            
            pst.execute();
            pst.close();
            
        }catch(Exception e)
        {
            throw new RuntimeException("Erro em createProfessor: " + e);
        }
    }
    
    public ArrayList<Professor> readProfessor()
    {
        String sql = "SELECT * FROM tb_professor";
        
        try{
            state = con.createStatement();
            result = state.executeQuery(sql);
            
            while(result.next())
            {
                Professor prof = new Professor();
                
                prof.setId(result.getInt("id_professor"));
                prof.setNome(result.getString("nome_professor"));
                prof.setEmail(result.getString("email_professor"));
                prof.setSenha(result.getString("senha_professor"));
                prof.setExcluido(result.getInt("excluido_professor"));
                
                professorLista.add(prof);
            }
            
        }catch(Exception e)
        {
            throw new RuntimeException("Erro ocorreu em readProfessor: " + e);
        }
        return professorLista;
    }
    
    public ArrayList<Professor> readProfessorByName(String name)
    {
        if (name.equals("")) {
            return null;
        }
        
        String sql = "SELECT * FROM tb_disciplina WHERE nome_disciplina LIKE '%" + name + "%'";
        
        try{
            state = con.createStatement();
            result = state.executeQuery(sql);
            
            while(result.next())
            {
                Professor prof = new Professor();
                
                prof.setId(result.getInt("id_professor"));
                prof.setNome(result.getString("nome_professor"));
                prof.setEmail(result.getString("email_professor"));
                prof.setSenha(result.getString("senha_professor"));
                prof.setExcluido(result.getInt("excluido_professor"));
                
                professorLista.add(prof);
            }
            
        }catch(Exception e)
        {
            throw new RuntimeException("Erro ocorreu em readProfessor: " + e);
        }
        return professorLista;
    }
    
    public Professor updateProfessor(Professor prof)
    {
        String sql = "UPDATE tb_professor SET nome_professor = ?, email_professor = ?, senha_professor = ? WHERE id_professor = ?";
               
        try{            
            pst = con.prepareStatement(sql);
            pst.setString(1, prof.getNome());
            pst.setString(2, prof.getEmail());
            pst.setString(3, prof.getSenha());
            pst.setInt(4, prof.getId());
            
            pst.execute();
            pst.close();
            
        }catch(Exception e)
        {
            throw new RuntimeException("Erro em updateProfessor: " + e);
        }
        return prof;
    }
    
    public Professor deleteProfessor(Professor prof)
    {
        String sql = "  UPDATE tb_professor SET excluido_professor = ? WHERE id_professor = ?";
        
        try{
            pst = con.prepareStatement(sql);
            
            pst.setInt(1, prof.getExcluido());
            pst.setInt(2, prof.getId());
            
            pst.execute();
            pst.close();
            
        }catch(Exception e)
        {
            throw new RuntimeException("Erro em deletarProfessor: " + e);
        }
        return prof;
    }
}
