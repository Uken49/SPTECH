package school.sptech.desafio.helder.davidson.poo;

import java.util.Objects;

public class RecursosHumanos {

    private Integer quantidadePromovidos = 0;
    private Integer quantidadeReajustes = 0;

    public void reajustarSalario(Colaborador colaborador, Double porcentagem) {
        
        if (Objects.isNull(colaborador) || Objects.isNull(porcentagem)) {
            return;
        }
        
        if (porcentagem <= 0) {
            return;
        }
        
        Double novoSalario = colaborador.getSalario() + (colaborador.getSalario() * porcentagem) / 100;
        colaborador.setSalario(novoSalario);
        
        setQuantidadeReajustes(1);
    }

    public void promoverColaborador(Colaborador colaborador, String novoCargo, Double novoSalario) {
        if (Objects.isNull(colaborador) || Objects.isNull(novoCargo) || Objects.isNull(novoSalario)) {
            return;
        }
        
        if (novoSalario <= colaborador.getSalario()) {
            return;
        }
        
        colaborador.setCargo(novoCargo);
        colaborador.setSalario(novoSalario);
        
        setQuantidadePromovidos(1);
    }

    public Integer getQuantidadePromovidos() {
        return quantidadePromovidos;
    }

    public void setQuantidadePromovidos(Integer quantidadePromovidos) {
        this.quantidadePromovidos += quantidadePromovidos;
    }

    public Integer getQuantidadeReajustes() {
        return quantidadeReajustes;
    }

    public void setQuantidadeReajustes(Integer quantidadeReajustes) {
        this.quantidadeReajustes += quantidadeReajustes;
    }
}
