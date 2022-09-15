package com.uken.lista02.nivelamento;

import java.util.Scanner;

public class Ex01Tabuada {
    public static void main(String[] args) {
        /*
            1-Solicite um número para o usuário.
            2-Exiba a tabuada correspondente ao número digitado.
        */
        
        Scanner leitor = new Scanner(System.in);
        
        System.out.println("Insira um número:");
        Integer numero = leitor.nextInt();
        
        for (int i = 0; i <= 10; i++) {
            System.out.printf("%d X %d = %d\n", numero, i, numero*i);
        }
    }
}
