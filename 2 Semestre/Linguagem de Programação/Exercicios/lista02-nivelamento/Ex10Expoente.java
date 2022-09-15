package com.uken.lista02.nivelamento;

import java.util.Scanner;

public class Ex10Expoente {

    public static void main(String[] args) {

        Scanner in = new Scanner(System.in);

        int base, expoente, potencia = 1;

        System.out.println("Digite a base:");
        base = in.nextInt();

        System.out.println("Digite o expoentte");
        expoente = in.nextInt();

        for (int i = 0; i < expoente; i++) {
            potencia = potencia * base;
        }

        System.out.printf("\nBase %d\n"
                + "Expoente %d\n"
                + "Potência %d\n", base, expoente, potencia);
    }
}
