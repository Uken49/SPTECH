package lista03.metodos.ex05PesoIdeal;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        Calculadora ibge = new Calculadora();

        System.out.println("Pessoa 1");
        System.out.println("Informe o sexo (m) ou (f):");
        String sexo1 = in.next();

        System.out.println("Informe a altura (em metros):");
        Double altura1 = in.nextDouble();

        ibge.calculaPesoIdeal(sexo1, altura1);

        System.out.println("Pessoa 2");
        System.out.println("Informe o sexo (m) ou (f):");
        String sexo2 = in.next();

        System.out.println("Informe a altura (em metros):");
        Double altura2 = in.nextDouble();

        ibge.calculaPesoIdeal(sexo2, altura2);
    }
}
