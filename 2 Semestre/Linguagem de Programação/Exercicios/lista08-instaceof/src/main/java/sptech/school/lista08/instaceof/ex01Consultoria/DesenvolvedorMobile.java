package sptech.school.lista08.instaceof.ex01Consultoria;

public class DesenvolvedorMobile extends Desenvolvedor{
    
    protected Integer qtdHoraTrabalhadaMobile;
    protected Double valorHoraTrabalhadaMobile;

    @Override
    public Double getSalario() {
        return super.getSalario() + (qtdHoraTrabalhadaMobile * valorHoraTrabalhadaMobile);
    }

    public DesenvolvedorMobile(
            String nome
            , Integer qtdHoraTrabalhada
            , Double valorHoraTrabalhada
            , Integer qtdHoraTrabalhadaMobile
            , Double valorHoraTrabalhadaMobile) {
        
        super(nome, qtdHoraTrabalhada, valorHoraTrabalhada);
        this.qtdHoraTrabalhadaMobile = qtdHoraTrabalhadaMobile;
        this.valorHoraTrabalhadaMobile = valorHoraTrabalhadaMobile;
    }
}
