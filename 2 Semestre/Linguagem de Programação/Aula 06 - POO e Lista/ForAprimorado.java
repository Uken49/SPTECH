package com.uken.projeto.lista;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

// Foreach falso
public class ForAprimorado {

    public static void main(String[] args) {

        Scanner in = new Scanner(System.in);

        List<String> filmes = new ArrayList<>();

        System.out.println("Digite um filme 01");
        filmes.add(in.nextLine());

        System.out.println("\nDigite um filme 02");
        filmes.add(in.nextLine());

        System.out.println("\nFilme fixo");
        filmes.add("Velocipastor");

        // Para cada item da lista "filmes",
        // a variável "filme" recebe o conteúdo do index
        // For aprimorado - Enhanced for
        for (String filme : filmes) {
            System.out.println("Nome: " + filme);
            System.out.println("");

            // Remover elemento com o ".remove" tem chance de erro,
            // pois o laço poderá se perder no index (que é abstraido)
            // Para remover itens da lista de forma segura
            // Usasse "Iterator" - Pesquisar sobre
        }
    }
}
