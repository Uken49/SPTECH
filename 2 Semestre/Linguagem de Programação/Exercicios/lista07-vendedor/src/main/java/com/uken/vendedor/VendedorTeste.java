package com.uken.vendedor;

public class VendedorTeste {
    public static void main(String[] args) {
        
        Departamento dept = new Departamento("Cafeteria");
        
        VendedorComissao vendedorComissao = new VendedorComissao(1, "Paulinio", 10_000.0, 10.0);
        VendedorComissaoMaisFixo vendedorComissaoMaisFixo = 
                new VendedorComissaoMaisFixo(2, "Yudi", 8_000.0, 25.0, 2_000.0);
        
        dept.adicionaVendedor(vendedorComissao);
        dept.adicionaVendedor(vendedorComissaoMaisFixo);
        
        System.out.println("Total: " + dept.getQuantidade());
        
//        System.out.println(vendedorComissao);
//        System.out.println(vendedorComissaoMaisFixo);
        
        System.out.println(dept.calcularTotalSalario());
    }
}
