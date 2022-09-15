package com.uken.projeto2;

public class Tipos {

    public static void main(String[] args) {

        
        System.out.println("Hello Java");

        /*
            Os principais tipos que utilizaremos:
        
            Essas váriaveis são da classe Wrapper que tem algumas funcionalidades
            do que os do tipo primitivo (int, float, double, etc)
                String -> para textos;
                Integer -> para números inteiros;
                Double -> para números com casas decimais;
                Boolean -> para verdadeiro ou falso;
         */
        
        String nome = "Helder";
        Integer idade = 19;
        Double altura = 1.73;
        // É uma convenção de colocar o prefixo 'is' em váriavel do tipo Boolean
        Boolean isAluno = true;
        
        // Toda váriavel da classe Wrapper inicializa a váriavel como null
        String frase;
        
        System.out.println("Meu nome é: " + nome + " e minha idade é: " + idade);

    }
}
