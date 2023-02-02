package com.uken.lista06.array.list.ex02aluno;

import java.util.List;

public class Faculdade {
    private String nome;
    private List<Aluno> aluno;
    
    public void matricularAluno(Aluno aluno){
        this.aluno.add(aluno);
    }
    
    public void cancelarMatricula(String ra){
        if (!aluno.contains(ra)) {
            return;
        }
        
        for (int i = 0; i < aluno.size(); i++) {
            if (aluno.get(i.)) {
                
            }
        }
    }
    
    public void exibirAlunos(){
        
    }
    
    public void exibirAlunosPorSemestre(Integer semestre){
        
    }
    
    public void exibirCancelados(){
        
    }
    
    public Faculdade(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }
    
}
