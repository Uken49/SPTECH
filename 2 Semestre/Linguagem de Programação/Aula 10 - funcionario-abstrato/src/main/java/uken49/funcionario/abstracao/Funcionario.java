package uken49.funcionario.abstracao;

public abstract class Funcionario {
    private String cpf;
    private String nome;
    
    public abstract Double calcSalario();

    public String getCpf() {
        return cpf;
    }

    public String getNome() {
        return nome;
    }
    
    public Funcionario(String cpf, String nome) {
        this.cpf = cpf;
        this.nome = nome;
    }

    @Override
    public String toString() {
        return "Funcionario{" + "cpf=" + cpf + ", nome=" + nome + '}';
    }
    
}
