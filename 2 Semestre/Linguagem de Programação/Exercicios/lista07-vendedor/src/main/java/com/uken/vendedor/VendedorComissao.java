package com.uken.vendedor;

public class VendedorComissao {
    private Integer codigo;
    private String nome;
    private Double vendas;
    private Double taxa;
    
    public Double calcularSalario(){
        return this.vendas + this.taxa / 100;
    }

    public VendedorComissao(Integer codigo, String nome, Double vendas, Double taxa) {
        this.codigo = codigo;
        this.nome = nome;
        this.vendas = vendas;
        this.taxa = taxa;
    }

    public Integer getCodigo() {
        return codigo;
    }

    public String getNome() {
        return nome;
    }

    public Double getVendas() {
        return vendas;
    }

    public Double getTaxa() {
        return taxa;
    }

    @Override
    public String toString() {
        
        StringBuilder sb = new StringBuilder();
        
        sb.append("\n").append("Vendedor Comissao:").append("\n");
        sb.append("codigo: ").append(codigo).append("\n");
        sb.append("nome: ").append(nome).append("\n");
        sb.append("vendas: R$").append(vendas).append("\n");
        sb.append("taxa: ").append(taxa).append("\n");
        sb.append("vendas: R$").append(this.calcularSalario()).append("\n");

        return sb.toString();
    }
    
    
}
