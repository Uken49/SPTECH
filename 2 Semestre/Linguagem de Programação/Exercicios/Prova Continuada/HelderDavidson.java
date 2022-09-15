package com.uken49.avaliacao.continuada.helder.davidson;

import java.util.Scanner;

public class HelderDavidson {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);

        Integer opcao;
        Double saldo = 0.0
                ,saldoSimulado
                ,deposito
                ,saque;

        System.out.println("-".repeat(30));
        System.out.println("|  SPTECH     Investimentos  |");
        System.out.println("-".repeat(30));

        do {
            System.out.println("| Olá, o que deseja fazer:   |");
            System.out.println("-".repeat(30));
            System.out.println("| 1 - Depositar              |");
            System.out.println("| 2 - Sacar                  |");
            System.out.println("| 3 - Simulador rendimentos  |");
            System.out.println("| 0 - Sair                   |");
            System.out.println("-".repeat(30));

            opcao = in.nextInt();

            switch (opcao) {
                case 1: // Deposito
                    System.out.println("Digite o valor do depósito:");
                    deposito = in.nextDouble();

                    if (deposito < 0) {
                        System.out.println("Valor digitado inválido, voltando para o menu\n");
                        break;
                    }

                    saldo += deposito;
                    System.out.printf("Depósito realizado - Saldo atual: %.2f \n", saldo);

                    break;
                case 2: // Sacar
                    System.out.println("Digite o valor do saque:");
                    saque = in.nextDouble();

                    if (saque > saldo || saque < 0) {
                        System.out.println("Valor digitado inválido, voltando para o menu\n");
                        break;
                    }

                    saldo -= saque;
                    System.out.printf("Saque realizado - Saldo atual: %.2f \n", saldo);

                    break;
                case 3: // Simulador rendimentos
                    if (saldo == 0) {
                        System.out.println("Saldo Zerado, opção inválida\n");
                        break;
                    }
                    
                    System.out.printf("| Saldo atual: %.2f |\n", saldo);
                    System.out.println("-".repeat(22));
                    saldoSimulado = saldo;
                    
                    for (int i = 0; i < 12; i++) {
                        saldoSimulado *= 1.1;
                        System.out.println("-".repeat(24));
                        System.out.printf("| Mês %d | Saldo: %.2f |\n", (i+1), saldoSimulado);
                        System.out.println("-".repeat(24));
                    }

                    break;
                case 0: // Sair
                    System.out.println("Encerrando programa");
                    break;
                default: // Exeption (esqueci com escreve em português)
                    System.out.println("Opção inválida, digite novamente\n");
            }
        } while (opcao != 0);

    }
}
