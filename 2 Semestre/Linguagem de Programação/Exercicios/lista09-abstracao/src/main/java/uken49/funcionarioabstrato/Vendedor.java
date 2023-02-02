package uken49.funcionarioabstrato;

public class Vendedor extends Funcionario{
    
    private Double vendas;
    private Double taxa;

    public Vendedor(String cpf, String nome, Double vendas, Double taxa) {
        super(cpf, nome);
        this.vendas = vendas;
        this.taxa = taxa;
    }

    @Override
    public Double calcSalario() {
        return vendas * taxa;
    }

    @Override
    public String toString() {
        return "Cpf: " + super.getCpf() + 
                "Nome: " + super.getNome() + 
                "Taxa: " + this.taxa + 
                "Vendas: " + this.vendas;
    }
    
    
    
    
    
}
