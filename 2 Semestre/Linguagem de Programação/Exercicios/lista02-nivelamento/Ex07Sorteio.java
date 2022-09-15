package com.uken.lista02.nivelamento;

import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;

public class Ex07Sorteio {
    public static void main(String[] args) {
        
        Scanner in = new Scanner(System.in);
        
        Integer num;
                
        do{
            System.out.println("Digite um número entre 1 e 100");
        
            num = in.nextInt();
        }while(num < 1 || num > 100);
        
        Integer numSorteio = 0,
            sorteado,
            qtdImpar = 0,
            qtdPar = 0;
        
        for (int i = 0; i < 200; i++) {
            
            sorteado = ThreadLocalRandom.current().nextInt(1, 101);
            
            
            if (sorteado == num && num != 0) {
                numSorteio = i;
            }
            
            if (sorteado % 2 == 0) {
                qtdPar++;
            }else{
                qtdImpar++;
            }
        }
        
        System.out.printf("O número %d saiu no sorteio %d\n",num ,numSorteio);
        System.out.printf("Foram sorteados %d números pares\n",qtdPar);
        System.out.printf("Foram sorteados %d números impares\n",qtdImpar);
        
    }
}
