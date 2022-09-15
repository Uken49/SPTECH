package com.uken.lista01;

import java.util.Scanner;

public class Ex05Calculadora {

    public static void main(String[] args) {
        /*
            1-Seja executável (possui o método main).
            2-Solicite um número para o usuário(número real).
            3-Solicite outro número para o usuário(número real).
            4-Calcule e exiba a soma dos dois números digitados.
            5-Calcule e exiba a subtração do primeiro número pelo segundo.
            6-Calcule e exiba a multiplicação do primeiro número pelo segundo.
            7-Calcule e exiba a divisão do primeiro número pelo segundo.
         */

        Scanner leitor = new Scanner(System.in);

        Double num1 = leitor.nextDouble();
        Double num2 = leitor.nextDouble();
        
        Double soma = num1 + num2;
        Double sub = num1 - num2;
        Double mult = num1 * num2;
        Double div = num1 / num2;
        
        System.out.println("Soma: " + soma);
        System.out.println("Subtração: " + sub);
        System.out.println("Multiplicação: " + mult);
        System.out.println("Divisão " + div);
        
        
    }
}
