package lista03.metodos.ex04desconto;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        DescontoProgressivo desconto = new DescontoProgressivo();
        
        System.out.println("Insira o valor do produto:");
        Double valorProduto = in.nextDouble();
        
        System.out.println("Digite a quantidade:");
        Integer qtdProduto = in.nextInt();
        
        desconto.desconto(valorProduto, qtdProduto);
    }
}
