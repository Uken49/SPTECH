package com.uken.projeto.herenca;

public class App {

    public static void main(String[] args) {
        
        // Classe concreta são classes que permitem criar instância
        // Classe abstrata são classes que não permitem criar instância
        
        // Apesar de ser uma classe genérica, ainda pode ser instânciada
        Aluno aluno = new Aluno(2, "Limbo", 0.0, 0.0);
        
        AlunoPos alunoPos = new AlunoPos(
                1
                ,"Helder"
                ,10.0
                ,10.0
                ,50.0
        );

    }
}
