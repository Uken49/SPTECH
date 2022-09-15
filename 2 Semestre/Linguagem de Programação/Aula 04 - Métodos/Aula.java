package pkg04.aula;

import java.util.Scanner;

public class Aula {

    public static void main(String[] args) {

        // Objeto ou instancia
        Utilitaria util = new Utilitaria();

        // Chamando o método
        util.exibirLinha();
        System.out.println("Helder");
        util.exibirLinha();

        //-----------------------------------------------
        // Objeto ou instancia
        Scanner in = new Scanner(System.in);

        System.out.println("Digite seu nome:");
        String nomeDigitado = in.nextLine();
        // util.exibirNome(nomeDigitado);

        // Chamando um método que usa 2 métodos
        util.exibirNomeComLinha(nomeDigitado);
        
        //-----------------------------------------------
        System.out.println("Digite um número inteiro");
        Integer numero1 = in.nextInt();

        System.out.println("Digite outro número inteiro");
        Integer numero2 = in.nextInt();

        //NomeArquivo comoVouChamar = new NomeClasse();
        Calculadora calcular = new Calculadora();
        
        // Método que cálcula e exibe
        // calcular.somarExibir(numero1, numero2);
        
        // Guardar o retorno em váriavel // Método que apenas cálcula
        Integer resultado = calcular.somar(numero1, numero2);
        System.out.printf("Resultado da soma de Integer: %d\n",resultado);

        //-------------------------------------------------
        System.out.println("Digite um número inteiro");
        Double numero3 = in.nextDouble();

        System.out.println("Digite outro número inteiro");
        Double numero4 = in.nextDouble();
        Double resultado2 = calcular.somar(numero3, numero4);
        System.out.printf("Resultado da soma de Double: %.2f\n",resultado2);
    }

}
