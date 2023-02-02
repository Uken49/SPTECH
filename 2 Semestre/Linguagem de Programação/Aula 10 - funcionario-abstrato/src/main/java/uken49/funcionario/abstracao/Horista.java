package uken49.funcionario.abstracao;

public class Horista extends Funcionario{

    private Integer qtdHora;
    private Double valorHora;

    public Horista(String cpf, String nome, Integer qtdHora, Double valorHora) {
        super(cpf, nome);
        this.qtdHora = qtdHora;
        this.valorHora = valorHora;
    }

    @Override
    public Double calcSalario() {
        return qtdHora * valorHora;
    }

    @Override
    public String toString() {
        return "Cpf: " + super.getCpf() + 
                "Nome: " + super.getNome() + 
                "Quantidade Hora: " + this.qtdHora + 
                "Valor hora: " + this.valorHora;
    }
}
