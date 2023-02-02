package com.uken.exemplo.agregacao;

import java.util.ArrayList;
import java.util.List;

public class App {
    public static void main(String[] args) {
        
        // Criando um grupo sem contatos
        Grupo grupo1 = new Grupo("Grupo LP");
        
        // Criando os contatos
        Contato c1 = new Contato("Helder", "(11) 99999-9999");
        Contato c2 = new Contato("Raissa", "(11) 88888-8888");
        Contato c3 = new Contato("Giuliana Miniguiti", "(11) 77777-7777");
        
        // Adicionando os contatos
        grupo1.adiciona(c1);
        grupo1.adiciona(c2);
        grupo1.adiciona(c3);
        
        // ---------------------------------------------------------------------
        // Criando uma lista
        List<Contato> teste = new ArrayList();
        
        // Adicionando os contatos na lists
        teste.add(c1);
        teste.add(c2);
        teste.add(c3);
        
        // Criando um grupo já com contatos
        Grupo grupo2 = new Grupo("Exemplo passando lista", teste);
    }
}
