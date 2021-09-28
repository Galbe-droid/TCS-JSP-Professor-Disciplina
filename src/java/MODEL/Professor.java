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
public class Professor {
    private int id;
    private String nome;
    private String email;
    private String senha;
    private int foiExcluido;
    
    public int getId()
    {
        return this.id;
    }
    
    public void setId(int idSet)
    {
        this.id = idSet;
    }
    
    public String getNome()
    {
        return this.nome;
    }
    
    public void setNome(String nomeSet)
    {
        this.nome = nomeSet;
    }
    
    public String getEmail()
    {
        return this.email;
    }
    
    public void setEmail(String emailSet)
    {
        this.email = emailSet;
    }
    
    public String getSenha()
    {
        return this.senha;
    }
    
    public void setSenha(String senhaSet)
    {
        this.senha = senhaSet;
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
