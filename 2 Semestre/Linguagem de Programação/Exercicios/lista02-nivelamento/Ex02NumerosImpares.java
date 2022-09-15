package com.uken.lista02.nivelamento;

public class Ex02NumerosImpares {
    public static void main(String[] args) {
        /*
            1-Usando “for”, exiba todos os números ímpares entre 0 e 90.
        */
        
        for (int i = 0; i <= 90; i++) {
            
            if (i%2 != 0) {
                System.out.println(i);
            }
            
        }
    }
}
