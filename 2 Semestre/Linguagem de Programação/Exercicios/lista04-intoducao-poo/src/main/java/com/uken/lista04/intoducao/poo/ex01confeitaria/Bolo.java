package com.uken.lista04.intoducao.poo.ex01confeitaria;

public class Bolo {

    private String sabor;
    private Double valor;
    private Integer qtdVendida;
    private Double valorRecebido;
    private Integer qtdMaxima;

    public Bolo(String sabor, Double valor) {
        this.sabor = sabor;
        this.valor = valor;
        this.qtdVendida = 0;
        this.valorRecebido = 0.0;
        this.qtdMaxima = 100;
    }

    public void comprarBolo(Integer qtdBolo) {

        if (qtdBolo > qtdMaxima) {
            System.out.println("Seu pedido ultrapassou nosso limite diário para esse bolo.");
            return;
        }
        
        valorRecebido += qtdBolo * valor ;
        qtdVendida += qtdBolo;
        this.qtdMaxima--;
    }
    
    public void exibirRelatorio(){
                
        System.out.printf(
                "O bolo sabor %s, foi comprado %d vezes hoje, totalizando R$ %.2f\n"
                ,sabor, qtdVendida, valorRecebido);
    }

}
