package lista03.metodos.ex02ibge;

import java.util.Scanner;

public class ClassesSociais {
    public static void main(String[] args) {
        
        Scanner in = new Scanner(System.in);
        
        DefinirClasse cellbit = new DefinirClasse();
        
        System.out.println("Insira sua renda:");
        Double renda = in.nextDouble();
        
        Double qtdSalMinimo = cellbit.calcularSalarioMinimo(renda);
        
        System.out.println("A quantidade de salário mínimo: "+ Math.round(qtdSalMinimo));
        
        String classe = cellbit.classificarClasse(qtdSalMinimo);
        System.out.println("Sua classe é: " + classe);
    }
}
