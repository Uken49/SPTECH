package sptech.school.lista08.instaceof.ex01Consultoria;

public class Desenvolvedor {
    protected String nome;
    protected Integer qtdHoraTrabalhada;
    protected Double valorHoraTrabalhada;
    
    public Double getSalario(){
        return this.qtdHoraTrabalhada * this.valorHoraTrabalhada;
    }

    public Desenvolvedor(
            String nome
            , Integer qtdHoraTrabalhada
            , Double valorHoraTrabalhada) {
        this.nome = nome;
        this.qtdHoraTrabalhada = qtdHoraTrabalhada;
        this.valorHoraTrabalhada = valorHoraTrabalhada;
    }
}
