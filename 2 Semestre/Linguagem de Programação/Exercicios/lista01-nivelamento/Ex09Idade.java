package com.uken.lista01;

import java.util.Scanner;

public class Ex09Idade {
    public static void main(String[] args) {
        /*
            1-Seja executável. 
            2-Solicite que o usuário digite o seu nome. 
            3-Em seguida, o programa deverá exibir a mensagem:
                “Olá, Fulano! Qual o ano de seu nascimento?”.
            4-Depois, o programa deverá exibir:
                “Em 2030 você terá XX anos”
                    (sendo "Fulano" o nome digitado pelo usuário e "XX" a idade do usuário).
        */
        
        Scanner leitor = new Scanner(System.in);
        
        System.out.println("Diga o seu nome:");
        String nome = leitor.next();
        
        System.out.printf("Olá, %s! Qual o ano de seu nascimento?", nome);
        Integer anoNasc = leitor.nextInt();
        
        Integer idade = 2030 - anoNasc;
        
        System.out.printf("Em 2030 você terá %d anos", idade);
    }
}
