package com.uken.lista06.array.list.ex02aluno;

public class Aluno {
    private String ra;
    private String nome;
    private Integer semestre;
    private Boolean ativo;

    public Aluno(String ra, String nome, Integer semestre, Boolean ativo) {
        this.ra = ra;
        this.nome = nome;
        this.semestre = semestre;
        this.ativo = ativo;
    }

    public String getRa() {
        return ra;
    }

    public String getNome() {
        return nome;
    }

    public Integer getSemestre() {
        return semestre;
    }

    public Boolean getAtivo() {
        return ativo;
    }
    
}
