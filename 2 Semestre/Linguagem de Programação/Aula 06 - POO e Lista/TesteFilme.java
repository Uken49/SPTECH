package com.uken.projeto.lista;

import java.util.ArrayList;
import java.util.List;

public class TesteFilme {

    public static void main(String[] args) {

        List<Filme> filmes = new ArrayList();

        while (true) {

            Filme filme1 = new Filme("Titanic", 1996, "James Cameron");
            System.out.println(filme1);
        }
    }
}
