package com.uken.lista02.nivelamento;

import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;

public class Ex06Loteria {
    public static void main(String[] args) {
        /*
            1-Solicite apenas uma vez número entre 0 e 10 para o usuário.
            2-Tente advinhar o número digitado através de números randômicos.
            3-A cada iteração exiba o número sorteado. 
            4-Quando acontecer o “acerto” se a quantidade de vezes necessárias for: 
                -Até 3: exiba "Você é MUITO sortudo"
                -Entre 4 e 10: exiba "Você é sortudo"
                -Mais de 10: exiba "É melhor você parar de apostar e ir trabalhar"
        */
        
        Scanner in = new Scanner(System.in);
        
        Integer numeroLido,
                numeroSorteado,
                contador = 0;
        
        // Fazendo o usuário digitar o número até acertar.
        do {
            System.out.println("Digite um número entre 0 e 10:");
            numeroLido = in.nextInt();
            
        } while (numeroLido < 0 || numeroLido > 10);
        
        // Máquina sorteando um número aleátorio
        do {
            numeroSorteado = ThreadLocalRandom.current().nextInt(0, 11);
            System.out.println(numeroSorteado);
            
            contador++;
            
        } while (numeroSorteado != numeroLido);
        
        if (contador <= 3) {
            System.out.println("Você é MUITO sortudo");
            
        }else if(contador >= 4 && contador <= 10){
            System.out.println("Você é sortudo");
            
        }else{
            System.out.println("É melhor você parar de apostar e ir trabalhar");
        }
    }
}
