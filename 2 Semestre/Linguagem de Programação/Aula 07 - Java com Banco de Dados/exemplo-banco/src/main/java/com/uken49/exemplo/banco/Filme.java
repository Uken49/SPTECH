package com.uken49.exemplo.banco;

public class Filme {

    private Integer id;
    private String nome;
    private Integer anoLancamento;
    
    
    // Se declarar construtores, deverá possuir um default ou seja vazio

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

    public Integer getAnoLancamento() {
        return anoLancamento;
    }

    public void setAnoLancamento(Integer anoLancamento) {
        this.anoLancamento = anoLancamento;
    }
}

