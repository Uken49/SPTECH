package com.uken.lista01;

import java.util.Scanner;

public class Ex01CadastroUsuario {
    /*
        1-Seja executável
        2-Solicite o login do cliente
        3-Solicite a senha do cliente
        4-Exiba uma frase como esta:
        "Seu login é L e sua senha é S.Você tem T tentativas antes de ser bloqueado" 
        5-Use interpolação
    */
    public static void main(String[] args) {
        Integer tentativas = 1;
        Scanner input = new Scanner(System.in);
    
        System.out.println("Digite seu login");
        String login = input.nextLine();
        
        System.out.println("Digite sua senha");
        String senha = input.nextLine();

        if(login.equals("login") && senha.equals("#Gf616")){
            System.out.print("Login realizado com sucesso!");
        }else{
            tentativas--;
            System.out.printf("Seu login é %s e sua senha é %s.Você tem %d tentativas antes de ser bloqueado", login, senha);
        }
    }
}
