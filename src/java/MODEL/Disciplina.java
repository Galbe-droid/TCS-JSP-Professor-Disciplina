/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODEL;

/**
 *
 * @author gabri
 */
public class Disciplina {
    private int id;
    private String nome;
    private int cargaHoraria;
    private int foiExcluido;
    
    public int getId()
    {
        return this.id;
    }
    
    public void setId(int idNum)
    {
        this.id = idNum;
    }
    
    public String getNome()
    {
        return this.nome;
    }
    
    public void setNome(String nomeSet)
    {
        this.nome = nomeSet;
    }
    
    public int getCargaHoraria()
    {
        return this.cargaHoraria;
    }
    
    public void setCargaHoraria(int cargaHorariaSet)
    {
        this.cargaHoraria = cargaHorariaSet;
    }
    
    public int getExcluido()
    {
        return this.foiExcluido;
    }
    
    public void setExcluido(int excluido)
    {
        this.foiExcluido = excluido;
    }
}
