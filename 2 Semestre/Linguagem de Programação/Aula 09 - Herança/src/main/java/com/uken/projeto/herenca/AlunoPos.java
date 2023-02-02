package com.uken.projeto.herenca;

// Para um classe ser herdeira de outra,
// usasse "extends"
public class AlunoPos extends Aluno {

    public AlunoPos(Integer ra, String nome, Double nota1, Double nota2, Double nota3) {
        // Para instanciar a subClasse, é necessário invocar o construtor
        // Para usar um comando da classe pai, se usasse o comando "super"
        super(ra, nome, nota1, nota2);
        this.nota3 = nota3;
    }
    
    private Double nota3;

    // Sobrescrita, quando invocar o método, ele invocará esse, ao invés da superClasse
    @Override
    public Double calcularMedia() {
        return (super.getNota1() + super.getNota2() + this.nota3)/ 3; // Se os atributos do pai forem private
        // return (nota1 + nota2 + nota3) / 3; // Se os atributos do pai forem protected/public
    }
    
}
