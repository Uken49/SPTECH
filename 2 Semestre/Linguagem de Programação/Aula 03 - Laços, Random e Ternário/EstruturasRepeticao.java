
package school.sptech.projeto03.cco;

public class EstruturasRepeticao {
    
    public static void main(String[] args) {
      
        System.out.println("Exibindo 0 a 10 usando for:");
        for (int i = 0; i <= 10; i++) {
            System.out.println("Número: " + i);
        }
        
        System.out.println("-".repeat(20));
        System.out.println("Exibindo 10 a 0 usando for:");
        
        for (int i = 10; i >= 0; i--) {
            System.out.println("Número: " + i);
        }
        
        System.out.println("-".repeat(20));
        System.out.println("Exibindo 0 a 10 usando while:");
        
        Integer i = 0;
        while (i <= 10) {            
            System.out.println("Número: " + i);
            i++;
        }
        
        System.out.println("-".repeat(20));
        System.out.println("Exibindo 10 a 0 usando while:");
        
        Integer j = 10;
        while (j >= 0) {            
            System.out.println("Número: " + j);
            j--;
        }
        
//        for(;;){
//            System.out.println("Emergencia");
//        }
    }
}
