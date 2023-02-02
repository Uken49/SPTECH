package lista03.metodos.ex06primo;

public class Verificar {

    void verificarPrimo(Integer numero) {

        for (int i = 2; i < numero; i++) {
            Boolean isPrimo = (numero % i) == 0 ? false : true;

            if (isPrimo) {
                System.out.printf("O número %d é primo\n", numero);

                return;
            }
        }

        System.out.printf("O número %d não é primo\n", numero);
    }
}
