package lista03.metodos.ex01media;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        
        System.out.println("Digite a primeira nota:");
        Double nota1 = in.nextDouble();
        
        System.out.println("Digite a segunda nota:");
        Double nota2 = in.nextDouble();
        
        CalcularMedia calcular = new CalcularMedia();
        
        System.out.println("Resultado: " + calcular.calcularMedia(nota1, nota2));
        
    }
    
}
