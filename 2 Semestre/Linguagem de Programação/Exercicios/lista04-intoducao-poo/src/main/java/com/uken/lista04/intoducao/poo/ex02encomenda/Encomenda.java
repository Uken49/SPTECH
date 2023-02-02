package com.uken.lista04.intoducao.poo.ex02encomenda;

public class Encomenda {

    private String tamanho;
    private String enderecoRemetente;
    private String enderecoDestinatario;
    private Double distancia;
    private Double valorEncomenda;
    private Double valorFrete;

    public Encomenda(String tamanho, String enderecoRemetente, String enderecoDestinatario, Double distancia, Double valorEncomenda) {
        this.tamanho = tamanho;
        this.enderecoRemetente = enderecoRemetente;
        this.enderecoDestinatario = enderecoDestinatario;
        this.distancia = distancia;
        this.valorEncomenda = valorEncomenda;
        this.valorFrete = 0.0;
    }

    public void calcularFrete() {
        if (tamanho.equalsIgnoreCase("p")) {
            valorFrete = this.valorEncomenda * 1.01;

        } else if (tamanho.equalsIgnoreCase("m")) {
            valorFrete = this.valorEncomenda * 1.03;

        } else {
            valorFrete = this.valorEncomenda * 1.05;
        }

        if (distancia <= 50) {
            valorFrete += 3;

        } else if (distancia <= 200) {
            valorFrete += 5;

        } else {
            valorFrete += 7;
        }
    }

    public void emitirEtiqueta() {
        System.out.println("*".repeat(5) + "ETIQUETA PARA ENVIO" + "*".repeat(5));
        System.out.printf("Endereço do remetente: %s\n", enderecoRemetente);
        System.out.printf("Endereço do destinatário: %s\n", enderecoDestinatario);
        System.out.printf("Tamanho: %s\n", tamanho);
        System.out.println("-".repeat(10));
        System.out.printf("Valor encomenda: R$ %.2f\n", valorEncomenda);
        System.out.printf("Valor frete: R$ %.2f\n", valorFrete);
        System.out.println("-".repeat(10));
        System.out.printf("Valor total: R$ %.2f\n", (valorFrete + valorEncomenda));
    }
}
