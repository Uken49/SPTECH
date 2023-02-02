package lista03.metodos.ex05PesoIdeal;

public class Calculadora {

    void calculaPesoIdeal(String sexo, Double altura) {
        Double pesoIdeal;

        if ("m".equalsIgnoreCase(sexo)) {
            pesoIdeal = (72.7 * altura) - 58;

        } else if ("f".equalsIgnoreCase(sexo)) {
            pesoIdeal = (62.1 * altura) - 44.7;

        } else {
            System.out.println("Sexo inválido, encerrando programa.");
            return;
        }

        System.out.printf("Peso ideal: %.2f\n\n",pesoIdeal);
    }
}
