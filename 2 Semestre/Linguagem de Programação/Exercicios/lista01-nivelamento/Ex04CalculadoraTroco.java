package com.uken.lista01;

import java.util.Scanner;

public class Ex04CalculadoraTroco {

    /*
        1-Seja executável
        2-Solicite o valor unitário de um produto
        3-Solicite a quantidade vendida
        4-Solicite o valor pago pelo cliente
        5-Calcule e exiba o troco com a seguinte frase:
            "Seu troco será de R$ X", onde "X" é o valor a ser devolvido ao cliente
     */
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("Valor do produto:");
        Integer valProduto = input.nextInt();

        System.out.println("Quantidade vendida:");
        Integer qtdVendida = input.nextInt();

        System.out.println("Valor pago pelo cliente:");
        Integer valPago = input.nextInt();

        Integer troco = valPago - (valProduto + qtdVendida);

        System.out.printf("Seu troco será de R$ %.2f", troco);
        
    }
}
