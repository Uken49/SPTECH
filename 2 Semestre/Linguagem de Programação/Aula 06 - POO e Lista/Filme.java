package com.uken.projeto.lista;

public class Filme {

    private String nome;
    private Integer ano;
    private String diretor;

    public Filme(String nome, Integer ano, String diretor) {
        this.nome = nome;
        this.ano = ano;
        this.diretor = diretor;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Integer getAno() {
        return ano;
    }

    public void setAno(Integer ano) {
        this.ano = ano;
    }

    public String getDiretor() {
        return diretor;
    }

    @Override
    public String toString() {
        return "Filme{" + "nome=" + nome + ", ano=" + ano + ", diretor=" + diretor + '}';
    }

    public void setDiretor(String diretor) {
        this.diretor = diretor;
    }
    
    
}
