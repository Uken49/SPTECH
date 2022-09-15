package lista03.metodos.ex04desconto;

public class DescontoProgressivo {

    void desconto(Double valorProduto, Integer qtdProduto) {
        Double desconto;

        if (qtdProduto == 1) {

            desconto = valorProduto * 0.1;
        } else if (qtdProduto == 2) {

            desconto = valorProduto * 0.2;

        } else if (qtdProduto >= 3) {
            
            desconto = valorProduto * 0.3;
        } else {
            
            desconto = valorProduto * 0;
        }
        
        Double valorProdFinal = (valorProduto - desconto) * qtdProduto;

        notaFiscal(valorProdFinal);
    }

    void notaFiscal(Double valorParaPagar) {
        System.out.printf("Valor com desconto: %.2f",valorParaPagar);
    }
}
