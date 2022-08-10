package com.uken.projeto2;

// Necessário para utilizar o Scanner
import java.util.Scanner;

public class Leitura {
    
    public static void main(String[] args) {
        
        // Chamando o Scanner o para o "leitorTexto"
        Scanner leitorTexto = new Scanner(System.in);
        Scanner leitorNumerico = new Scanner(System.in);
        
        System.out.println("Digite seu nome:");
                    //leitor.next() ele pega apenas a primeira palavra
        String nome = leitorTexto.nextLine(); // Aqui ele pega a frase inteira
        
        System.out.println("Digite sua idade");
        Integer idade = leitorNumerico.nextInt();
        
        System.out.println("Digite sua altura");
        Double altura = leitorNumerico .nextDouble();
        
        // O que o usuário digitou, é armazenado na váriavel
        System.out.println("Olá " + nome);
        System.out.println("Sua idade é " + idade);
        System.out.println("Sua altura é de: " + altura);
    }
    
}