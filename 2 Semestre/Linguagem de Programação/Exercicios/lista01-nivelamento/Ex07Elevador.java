package com.uken.lista01;

import java.util.Scanner;

public class Ex07Elevador {
    public static void main(String[] args) {
        /*
            1-Seja executável.
            2-Solicite ao usuário o limite de peso de um elevador (número real).
            3-Solicite ao usuário o limite de pessoas em um elevador (número inteiro).
            4-Solicite ao usuário o peso da 1ª pessoa que entrou no elevador (número real).
            5-Solicite ao usuário o peso da 2ª pessoa que entrou no elevador (número real).
            6-Solicite ao usuário o peso da 3ª pessoa que entrou no elevador (número real). 
            6-Ao final, exiba uma frase assim: 
                "Entraram 3 pessoas no elevador, no qual cabem X pessoas.
                O peso total no elevador é de Y, sendo que ele suporta Z".
            (onde X é o 2º valor lido no programa, Z o 1º e Y é a soma dos pesos das 3 pessoas)
        */
        
        Scanner leitor = new Scanner(System.in);
        
        System.out.println("Limite de peso do elevador:");
        Double limPesoElevador = leitor.nextDouble();
        
        System.out.println("Quantidade máxima de pessoas:");
        Integer limPessoaElevador = leitor.nextInt();
        
        System.out.println("Informe o peso da 1° pessoa:");
        Double pesoPessoa1 = leitor.nextDouble();
        
        System.out.println("Informe o peso da 2° pessoa:");
        Double pesoPessoa2 = leitor.nextDouble();
        
        System.out.println("Informe o peso da 3° pessoa:");
        Double pesoPessoa3 = leitor.nextDouble();
        
        Double pesoTotal = pesoPessoa1 + pesoPessoa2 + pesoPessoa3;
        
        System.out.printf("Entraram 3 pessoas no elevador, no qual cabem %d pessoas\n", limPessoaElevador);
        System.out.printf("O peso total no elevador é de %.2f, sendo que ele suporta %.2f",
                pesoTotal, limPesoElevador );
    }
}
