package com.uken.vendedor;

import java.util.ArrayList;
import java.util.List;

public class Departamento {
    
    private String nome;
    private List<VendedorComissao> vendedores;

    public Departamento(String nome) {
        this.nome = nome;
        this.vendedores = new ArrayList();
    }

    public void adicionaVendedor(VendedorComissao novoVendedor){
        this.vendedores.add(novoVendedor);
    }
    
    public Integer getQuantidade(){
        return vendedores.size();
    }
    
    public Double calcularTotalSalario(){
        
        Double salTotal = 0.0;
                
        for (VendedorComissao vendedor : vendedores) {
            salTotal += vendedor.calcularSalario();
        }
        
        return salTotal;
    }
    
    public Integer getQuantidadeFixos(){
        
        Integer total = 0;
        
        for (VendedorComissao vendedor : vendedores) {
            
            if (vendedor instanceof VendedorComissaoMaisFixo) {
                total++;
            }
            
        }
        
        return total;
    }
    
}
