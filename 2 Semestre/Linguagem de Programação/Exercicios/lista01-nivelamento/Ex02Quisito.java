package com.uken.lista01;

import java.util.Scanner;

public class Ex02Quisito {
    /*
        1-Crie uma classe Java que:
        2-Solicite ao usuário quantos filhos de 0 a 3 anos.
        3-Solicite a ao usuário quantos filhos de 4 a 16.
        4-Solicite ao usuário quantos filhos de 17 a 18 anos possui.
        5-Calcule o valor da Bolsa, sendo que o governo paga:
        
        *R$25,12 por filhos com menos de 4 anos
        *R$15,88 por filhos entre 4 e 16 anos
        *R$12,44 por filhos entre 17 e 18 anos

        Exiba uma frase como esta:
        
        "Você tem um total de T filhos e vai receber R$B de bolsa".
        Use interpolação com 2 casas decimais para o valor da bolsa
    */
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
    
        System.out.println("Você tem quantos filhos de 0 a 3 anos?");
        Integer qtd0a3 = input.nextInt();
        
        System.out.println("e de 4 a 16 anos?");
        Integer qtd4a16 = input.nextInt();

        System.out.println("e de 17 a 18 anos?");
        Integer qtd17a18 = input.nextInt();

        Integer totFilhos = qtd0a3 + qtd4a16 + qtd17a18;
        Double bolsa = (25.12*qtd0a3) + (15.88*qtd4a16) + (12.44*qtd17a18);
        
        System.out.printf("Você tem um total de %d filhos e vai receber R$%.2f de bolsa", totFilhos, bolsa);
    }
}
