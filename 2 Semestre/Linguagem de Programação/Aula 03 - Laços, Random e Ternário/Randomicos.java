
package school.sptech.projeto03.cco;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

public class Randomicos {

    public static void main(String[] args) {
     
        
        /*
            Anteriormente na jornada de programação:
            Math.random() * n
            
            Fato é que:
            Math.random() * n -> Existe no Java!
        
            Existem outros, exemplo:
            Random geradorRandomico = new Random();
        
            geradorRandomico.nextInt(10);
            geradorRandomico.nextDouble();
            geradorRandomico.nextBoolean();
        */
        
        Integer inteiroGerado = 
                ThreadLocalRandom.current().nextInt(0, 10);
                
        Double numeroDoubleGerado = 
                ThreadLocalRandom.current()
                        .nextDouble(0, 10.50);
        
        String teste = String.format("Número gerado: %d", inteiroGerado);
        
        System.out.println(
                String.format("Número gerado: %d", inteiroGerado));
        
        System.out.printf("Número gerado: %d", inteiroGerado);
        
        System.out.printf("Número gerado: %.2f", numeroDoubleGerado);
    }
}
