package com.uken.exemplo.agregacao;

import java.util.ArrayList;
import java.util.List;

public class Grupo {
    private String nome;
    private List<Contato> contatos;
    
    public void adiciona(Contato contato){
        this.contatos.add(contato);
    }
    
    // Isso só vai funcionar se você passar a mesma instância
    // ou, sobreescrever o método equals e hashcode
    public void remover(Contato contato){
        this.contatos.remove(contato);
    }
    
    public void remover(String telefone){
        for (int i = 0; i < contatos.size(); i++) {
            if (contatos.get(i).getTelefone().equals(telefone)) {
                contatos.remove(i);
            }
        }
    }

    public Grupo(String nome, List<Contato> contatos) {
        this.nome = nome;
        this.contatos = contatos;
    }
    
    public Grupo(String nome){
        this.nome = nome;
        this.contatos = new ArrayList();
    }
    
    public String getNome() {
        return nome;
    }

    public List<Contato> getContatos() {
        return contatos;
    }
    
}
