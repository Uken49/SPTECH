package com.uken.lista06.array.list.ex01carrinho;

import java.util.List;
import java.util.Objects;

public class Carrinho {

    private String cliente;
    private List<Produto> produtos;

    public Carrinho(String cliente, List<Produto> produtos) {
        this.cliente = cliente;
        this.produtos = produtos;
    }

    public Integer getQuantidade() {
        return produtos.size();
    }

    public void adicionar(Produto produto) {
        if (Objects.isNull(produto)) {
            return;
        }

        produtos.add(produto);
    }

    public Boolean existsPorNome(String nome) {

        return produtos.contains(nome);
    }

    public Integer getQuantidadePorCategoria(String nome) {
        Integer quantidade = 0; 
        
        for (Produto produto : produtos) {
            if (produto.getCategoria().equals(nome)) {
                quantidade++;
            }
        }
        
        return quantidade;
    }

    public void limpar() {
        produtos.clear();
    }

    public void removerPorNome(String nome) {
        if (!produtos.contains(nome)) {
            return;
        }
        
        for (Produto produto : produtos) {
            if (produto.getNome().equals(nome)) {
                produtos.remove(nome);
            }
        }
    }

    public Produto getPorNome(String nome) {

        for (Produto produto : produtos) {
            if (produto.getNome().equals(nome)) {
                System.out.println(produto.getNome());
                return produto;
            }
        }

        return null;
    }

//    public Double getValorTotal() {
//
//    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public void setProdutos(List<Produto> produtos) {
        this.produtos = produtos;
    }

}
