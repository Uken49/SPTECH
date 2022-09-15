package school.sptech.projeto03.cco;

public class Ternario {

    public static void main(String[] args) {

        Boolean isMatriculado = true;

        String frase;

//        if (isMatriculado) {
//            frase = "Está matriculado";
//        }else{
//            frase = "Não está matriculado";
//        }
        frase = isMatriculado ? "Está matriculado" : "Não está matriculado";

        System.out.println(frase);

        Integer numero = 42;

        String verificaoNumero;

//        if (numero % 2 == 0) {
//            verificaoNumero = "É par...";
//        }else{
//            verificaoNumero = "É ímpar...";
//        }
        verificaoNumero = numero % 2 == 0 ? "É par..." : "É ímpar...";

        System.out.println(verificaoNumero);     
        
        Boolean isPar = numero % 2 == 0;

//        Jeito errado:
//        Boolean isPar = numero % 2 == 0 ? true : false;
    }
}
