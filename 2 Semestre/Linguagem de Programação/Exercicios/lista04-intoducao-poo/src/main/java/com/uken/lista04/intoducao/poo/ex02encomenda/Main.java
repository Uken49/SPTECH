package com.uken.lista04.intoducao.poo.ex02encomenda;

public class Main {
    public static void main(String[] args) {
        Encomenda sedex = new Encomenda(
                "p"
                , "Santa Efigênia, 401"
                , "Avenidada Brasil, 90"
                , 90.3, 85.3);
        
        sedex.calcularFrete();
        sedex.emitirEtiqueta();
        
    }
}
