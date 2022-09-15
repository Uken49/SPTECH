package com.uken.lista01;

import java.util.Scanner;

public class Ex08CalculoMedia {
    public static void main(String[] args) {
        /*
            1-Seja executável
            2-Solicite o nome e duas notas ao usuário.
            3-As notas são números reais.
            4-Calcule a média entre as notas (Dica: é da mesma forma como se faz em JavaScript)
            5-Exiba uma frase como esta: "Olá, NOME. Sua média foi de MEDIA"
            6-Use Interpolação com 1 casa decimal para a média.
        */
        
        Scanner leitor = new Scanner(System.in);
        
        System.out.println("Insira um nome:");
        String nome = leitor.nextLine();

        System.out.println("Digite a primeira nota:");
        Integer nota1 = leitor.nextInt();
        
        System.out.println("Digite a segunda nota:");
        Integer nota2 = leitor.nextInt();
        
        Double media = (nota1*1.0 + nota2)/2;
        
        System.out.printf("Olá, %s. Sua média foi de %.1f", nome, media);

    }
}
