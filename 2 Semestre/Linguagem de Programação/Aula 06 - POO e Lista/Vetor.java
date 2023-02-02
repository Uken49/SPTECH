package com.uken.projeto.lista;

public class Vetor {
    public static void main(String[] args) {
        
        // Vetor = Vetor
        // O colchete identifica como Vetor
        // new 'Tipo Do Vetor'['Qtd De Índices']
        String[] nomes = new String[3];
        nomes[0] = "Helder"; // Adicionando item na posição 0
        nomes[1] = "Romilda"; // Adicionando item na posição 1
        nomes[2] = "Zipora"; // Adicionando item na posição 2
        
        // Exibindo todo o vetor
        for (int i = 0; i < nomes.length; i++) {
            System.out.println("Índice: " + i);
            System.out.println("Conteúdo" + nomes[i]);
            System.out.println("");
        }
        
    }
}
