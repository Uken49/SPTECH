package com.uken.projeto2;

public class Operadores {

    public static void main(String[] args) {

        /*
            == -> para comparação de números
            != -> diferente
            < -> menor
            > -> maior
            <= -> menor ou igual
            >= -> menor ou igual
            ! -> para negar uma expressão

            num1++
            num1--
            num1-=num2
            num1+=num2
        
            Método para fazer potênciação -> Math.pow(x, y);
        */
        
        Integer numero1 = 42,
                numero2 = 20;
        
        // Estruturas de condição e de repetição são praticamente as mesmas
        // coisas em qualquer linguagem, algumas podem ter pouco diferença.
        // A estrutura do Java é a mesma do JavaScript
        if (numero1 > numero2) {
            System.out.println(numero1 + " é maior que " + numero2);
        } else if (numero1 < numero2){
            System.out.println(numero1 + " é menor que " + numero2);
        } else {
            System.out.println(numero1 + " é igual a " + numero2);
        }
        
        Boolean isProfessor = true;
        
        if (isProfessor) { // Naturalmente a váriavel é true
            System.out.println("É professor...");
        } else {
            System.out.println("Não é professor...");
        }
        /*
            Quando duas Strings 'chapadas' no código forem comparadas o resultado
            será "true" (idependente do valores da string)
        
            Caso contrário, ele dará false
        */
        String nome1 = "Helder";
        String nome2 = "Helder"; // Se essa String for escrita do mesmo modo,
                                 //     porém só que pelo Scanner, dará false.
        
        if (nome1 == nome2) {
            System.out.println("São iguais");
        } else{
            System.out.println("Não são iguais");
        }
        
        /*
            Case Sensitive
            .equals() -> Para poder comparar Strings, serve para os demais
                            tipos
        
            Case !Sensitive
            .equalsIgnoreCase() -> compara ignorando se é Maisculo ou minusculo 
        */
        
        if (nome1.equals(nome2)) { // 
            System.out.println("São iguais");
        } else{
            System.out.println("Não são iguais");
        }
    }
}
