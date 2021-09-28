/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import DAO.Connect;
import MODEL.Disciplina;
import java.util.ArrayList;
import java.sql.*;

/**
 *
 * @author gabri
 */
public class DAODisciplina {
    
    private Statement state;
    private ResultSet result;
    private PreparedStatement pst;
    private Connection con;
    private ArrayList<Disciplina> disciplinaLista = new ArrayList<>();
    
    public DAODisciplina()
    {
        con = new Connect().getConnection();
    }   
    
    public void createDisciplina(Disciplina disciplina)
    {
        String sql = "INSERT INTO tb_disciplina (nome_disciplina, cargahoraria_disciplina, excluir_disciplina) VALUES (?,?,?)";
                
        try{
            pst = con.prepareStatement(sql);
            pst.setString(1, disciplina.getNome());
            pst.setInt(2, disciplina.getCargaHoraria());
            pst.setInt(3, 0);
            
            pst.execute();
            pst.close();         
            
        }catch(Exception e)
        {
            throw new RuntimeException("Erro em createDisciplina: " + e);
        }
    }
    
    public ArrayList<Disciplina> readDisciplina()
    {
        String sql = "SELECT * FROM tb_disciplina";
        
        try{
            state = con.createStatement();
            result = state.executeQuery(sql);
            
            while(result.next())
            {
                Disciplina disp = new Disciplina();
                
                disp.setId(result.getInt("id_disciplina"));
                disp.setNome(result.getString("nome_disciplina"));
                disp.setCargaHoraria(result.getInt("cargahoraria_disciplina"));
                disp.setExcluido(result.getInt("excluir_disciplina"));
                
                disciplinaLista.add(disp);
            }
            
        }catch(Exception e)
        {
            throw new RuntimeException("Erro em readDisciplina: " + e);
        }
        
        return disciplinaLista;
    }
    
    public ArrayList<Disciplina> readDisciplinaByName(String nomeDisciplina)
    {
        if (nomeDisciplina.equals("")) {
            return null;
        }
        
        String sql = "SELECT * FROM tb_disciplina WHERE nome_disciplina LIKE '%" + nomeDisciplina + "%'";
        
        try{
            state = con.createStatement();
            result = state.executeQuery(sql); 
            
            while(result.next())
            {
                Disciplina disp = new Disciplina();
                
                disp.setId(result.getInt("id_disciplina"));
                disp.setNome(result.getString("nome_disciplina"));
                disp.setCargaHoraria(result.getInt("cargahoraria_disciplina"));
                disp.setExcluido(result.getInt("excluir_disciplina"));
                
                disciplinaLista.add(disp);
            }
            
        }catch(Exception e)
        {
            throw new RuntimeException("Erro em readDisciplinaByName: " + e);
        }
        return disciplinaLista;
    }
    
    public Disciplina updateDisciplina(Disciplina disc)
    {
        String sql = "UPDATE tb_disciplina SET nome_disciplina = ?, cargahoraria_disciplina = ? WHERE id_disciplina = ?";
        try{
            pst = con.prepareStatement(sql);
            
            pst.setString(1, disc.getNome());
            pst.setInt(2, disc.getCargaHoraria());
            pst.setInt(3, disc.getId());
            
            pst.execute();
            pst.close();;
            
        }catch(Exception e)
        {
            throw new RuntimeException("Erro em updateDisciplina: " + e);
        }        
        return disc;
    }
    
    public Disciplina deleteDisciplina(Disciplina disc)
    {
        String sql = "UPDATE tb_disciplina SET excluir_disciplina = ? WHERE id_disciplina = ?";
        try{
            pst = con.prepareStatement(sql);
            
            pst.setInt(1, disc.getExcluido());
            pst.setInt(2, disc.getId());
            
            pst.execute();
            pst.close();           
            
        }catch(Exception e)
        {
            throw new RuntimeException("Erro em deleteDisciplina: " + e);
        }
        return disc;
    }
}
