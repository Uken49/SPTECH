package lista03.metodos.ex03idade;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        ClassificarIdade clasifqIdade = new ClassificarIdade();
        
        System.out.println("Insira sua idade:");
        Integer idade = in.nextInt();
        
        clasifqIdade.classificarIdade(idade);
        
    }
}
