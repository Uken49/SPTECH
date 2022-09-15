package com.uken.lista01;

import java.util.Scanner;

public class Ex06SalarioLiquido {

    public static void main(String[] args) {
        /*
            1-A classe deve ser executável
            2-O programa solicita o salário bruto
            3-O programa calcula o desconto do INSS, que é sempre de 10% sobre o bruto
            4-O programa calcula o desconto de IR, que é sempre de 20% sobre o bruto
            5-O programa pergunta quanto custa a condução diária só de ida da casa para o trabalho. 
            6-O desconto de VT é sempre o que o usuário gasta. Assim, calcula-se assim:
                Valor de condução ida x 2 x 22.
            7-Calcule o salário líquido, que é o bruto menos os descontos de INSS, IR e VT
            8-Exiba, usando interpolação e com os valores numéricos com 2 casas decimais,
                uma frase como esta:
                    "Seu salário bruto é R$A, tem um total de R$B em descontos e receberá um líquido de R$C
         */
        
        Scanner leitor = new Scanner(System.in);
        
        System.out.println("Diga seu salário bruto:");
        Double salBruto = leitor.nextDouble();
        
        Double inss = salBruto * 0.1;
        Double ir = salBruto * 0.2;
        
        System.out.println("Quanto custa a condução diária:");
        Double diaConducao = leitor.nextDouble();
        Double descConducao = diaConducao * 2 * 22;
        Double salLiquido = salBruto - inss - ir;

        
        System.out.printf("Seu salário bruto é R$%.2f, tem um total de R$%.2f em descontos e "
                + "receberá um líquido de R$.2f", salBruto, descConducao, salLiquido);
    }
}
