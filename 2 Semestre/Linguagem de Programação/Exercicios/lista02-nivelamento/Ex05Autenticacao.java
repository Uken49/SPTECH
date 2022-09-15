package com.uken.lista02.nivelamento;

import java.util.Scanner;

public class Ex05Autenticacao {

    public static void main(String[] args) {
        /*
            0-Elaborar um programa java que simule a autenticação de um usuário em um sistema.
            1-Solicite o nome de usuário e senha.
            2-Enquanto o nome for diferente de “admin” e a senha for diferente de “#SPtech2022”
                exiba: “Login e/ou senha inválidos” e solicite novamente.
            3-Caso o usuário digite os campos corretamente, exiba: “Login realizado com sucesso”
         */

        Scanner in = new Scanner(System.in);

        String login, senha;
        
        do {
            System.out.println("Digite seu login:");
            login = in.nextLine();

            System.out.println("Digite sua senha:");
            senha = in.nextLine();
            
        } while (!login.equals("admin") && !senha.equals("#SPtech2022"));

        System.out.println("Login realizado com sucesso");
    }
}
