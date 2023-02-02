package com.sptech.atividade.com.testes;

public class Medico {

    private Integer id;
    private String nome;
    private String especialidade;
    private Boolean ativo;
    private Double salario;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEspecialidade() {
        return especialidade;
    }

    public void setEspecialidade(String especialidade) {
        this.especialidade = especialidade;
    }

    public Boolean getAtivo() {
        return ativo;
    }

    public void setAtivo(Boolean ativo) {
        this.ativo = ativo;
    }

    public Double getSalario() {
        return salario;
    }

    public void setSalario(Double salario) {
        this.salario = salario;
    }

    public Medico(Integer id, String nome, String especialidade) {
        this.id = id;
        this.nome = nome;
        this.especialidade = especialidade;
        this.ativo = true;
        this.salario = 0.0;
    }

}
