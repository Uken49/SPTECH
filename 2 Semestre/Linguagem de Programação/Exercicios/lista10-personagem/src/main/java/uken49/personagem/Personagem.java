package uken49.personagem;

import java.util.ArrayList;
import java.util.List;

public abstract class Personagem {
    private String codinome;
    private String nome;
    private List<SuperPoder> poderes;
    
    public void adicionaPoder(String nome, String categoria){
        poderes.add(new SuperPoder(nome, categoria));
    }
    
    public abstract Double getForcaTotal();

    public String getCodinome() {
        return codinome;
    }

    public String getNome() {
        return nome;
    }

    public List<SuperPoder> getPoderes() {
        return poderes;
    }

    @Override
    public String toString() {
        return "Codinome: " + codinome + 
                "Nome: " + nome + 
                "Poderes: " + poderes;
    }

    public Personagem(String codinome, String nome) {
        this.codinome = codinome;
        this.nome = nome;
        this.poderes = new ArrayList();
    }
    
}
