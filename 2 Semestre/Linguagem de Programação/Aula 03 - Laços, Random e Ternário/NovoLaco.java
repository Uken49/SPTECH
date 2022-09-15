package school.sptech.projeto03.cco;

import java.util.Scanner;

public class NovoLaco {

    public static void main(String[] args) {

        Scanner leitor = new Scanner(System.in);

        Integer numero = 10;

        System.out.println("Acerte o numero");
        Integer numeroDigitado = leitor.nextInt();

        // Enquanto o numero digitado for != 10 repita a leituar
        while (numeroDigitado != numero) {
            System.out.println("Errrrouuu...");
            System.out.println("Acerte o numero");
            numeroDigitado = leitor.nextInt();
        }

        System.out.println("Vc acertou :)");

        System.out.println("-".repeat(20));
        System.out.println("Exemplo do...while");

        numeroDigitado = 0;
        do {
            System.out.println("Acerte o numero");
            numeroDigitado = leitor.nextInt();
        } while (numeroDigitado != numero);
        
        System.out.println("Vc acertou :)");

    }
}
