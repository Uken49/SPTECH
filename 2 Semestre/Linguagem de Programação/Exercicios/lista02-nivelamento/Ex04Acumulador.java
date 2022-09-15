package com.uken.lista02.nivelamento;

import java.util.Scanner;

public class Ex04Acumulador {
    public static void main(String[] args) {
        /*
            1-Leia vários números até ler o número 0 e calcule a soma dos números lidos.
        */
        
        Scanner leitor = new Scanner(System.in);
        
        Integer numero = 0;
        Integer numeroLido;
        
        do {
            System.out.println("Digite um número");
            
            numeroLido = leitor.nextInt();
            numero += numeroLido;
            
        } while (numeroLido != 0);
        
        System.out.println("Soma dos números digitados: "+numero);
    }
}
