package com.uken.projeto.lista;

import java.util.ArrayList;
import java.util.List;

public class Lista {

    public static void main(String[] args) {

        // Uma lista, ao contrário de um vetor,
        // permite guardar vários tipos de dados
        /*
        List listaLoka = new ArrayList();
        listaLoka.add("Helder");
        listaLoka.add(19);
        listaLoka.add(true);
        listaLoka.add(1.71);
        
        // Exibindo a lista com os dados
        for (int i = 0; i < listaLoka.size(); i++) {
            System.out.println(listaLoka.get(i));
        }
         */
        // Tipo genérico ou Generic type
        // Diamond operator <> - Serve para restringir os tipos de dados aceitos
        // Por padrão, o tamanho inicial é 10,
        // contudo se passar desse valor, ele DOBRA o tamanho.
        List<String> nomes = new ArrayList();
        nomes.add("Helder"); // 0
        nomes.add("Diego"); // 1
        nomes.add("Toreto"); // 2
        nomes.add("Romilda"); // 3
        nomes.add("Fausto"); // 4

        // Exibindo a lista com as Strings
        for (int i = 0; i < nomes.size(); i++) {
            System.out.println("Nome: " + nomes.get(i));
        }
        System.out.println("Antes\n");

        nomes.add(0, "Marise"); // Empurra os demais indices e cria o indice dado como argumento
        nomes.set(5, "My names is Ary"); // Aqui ele substitui o elemento do indice
        nomes.remove(3); // Remove o indice e empurra os demais para esquerda
        for (int i = 0; i < nomes.size(); i++) {
            System.out.println("Nome: " + nomes.get(i));
        }
        System.out.println("Depois\n");
        
        nomes.clear(); // Deleta toda a lista
        System.out.println("Tamanho da lista: " + nomes.size());
        
        if (nomes.isEmpty()) { // Retorna um boolean sobre estar vazia ou não
            System.out.println("Está vazia...");
        }else{
            System.out.println("Não está vazia...");
        }

    }
}
