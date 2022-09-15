package com.uken.lista01;

import java.util.Scanner;

public class Ex03Calorias {

    /*
        Chicó começou a se exercitar e deseja saber quantas calorias vai perder nos exercícios.
        1-Crie uma classe Java que:
        2-Seja executável
        3-Solcite ao usuário o tempo, em minutos (valor inteiro) que ele passou se aquecendo
        4-Solicite ao usuário o tempo em minutos (valor inteiro) que ele fez exercícios aeróbicos
            (correr, andar, pedalar, etc)
        5-Solicite ao usuário o tempo em minutos (valor inteiro) que ele fez exercícios de musculação
        6-Calcule quantas colorias o Chicó perdeu, sendo que:
            *cada minuto de aquecimento faz perder 12 calorias
            *cada minuto de Ex. aeróbico faz perder 20 calorias
            *cada minuto de musuculação faz perder 25 calorias
        7-Exiba, usando interpolação e apenas valores numéricos inteiros, uma frase como esta:
        
        "Olá Chicó. Você fez um total de X minutos de exercícios e perdeu cerca de Y calorias".
     */
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("Tempo se aquecendo:");
        Integer aquecimento = input.nextInt();

        System.out.println("Tempo fazendo aeróbica:");
        Integer aerobica = input.nextInt();

        System.out.println("Tempo fazendo musculação");
        Integer musculacao = input.nextInt();

        Integer totTempo = aquecimento + aerobica + musculacao;
        Double caloriasPerdidas = (12.0 * aquecimento) + (20 * aerobica) + (25 * musculacao);

        System.out.printf("Olá Chicó. Você fez um total de %d minutos de exercícios e perdeu cerca de %d calorias", totTempo, caloriasPerdidas);
    }
}
