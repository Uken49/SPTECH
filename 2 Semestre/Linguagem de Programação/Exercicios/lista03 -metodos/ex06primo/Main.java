package lista03.metodos.ex06primo;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        Verificar verPrimo = new Verificar();
        Integer numero = 0;
        
        while (numero >= 0) {
            System.out.println("Digite um número:");
            numero = in.nextInt();

            verPrimo.verificarPrimo(numero);
        }

    }
}
