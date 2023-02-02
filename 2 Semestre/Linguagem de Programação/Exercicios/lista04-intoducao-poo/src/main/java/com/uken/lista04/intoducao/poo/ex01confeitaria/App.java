package com.uken.lista04.intoducao.poo.ex01confeitaria;

public class App {
    public static void main(String[] args) {
        
        Bolo bolo1 = new Bolo("Chocolate com pimenta", 49.99);
        Bolo bolo2 = new Bolo("Maracujá", 45.5);
        Bolo bolo3 = new Bolo("Abacaxi com massa branca", 55.49);
        
        
        bolo1.comprarBolo(101);
        bolo2.comprarBolo(99);
        bolo2.comprarBolo(1);
        bolo3.comprarBolo(20);
        bolo3.comprarBolo(79);
        
        bolo1.exibirRelatorio();
        bolo2.exibirRelatorio();
        bolo3.exibirRelatorio();
        
    }
}
