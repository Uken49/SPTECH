package com.sptech.atividade.com.testes;

import java.util.Objects;

public class Hospital {

    private String nome;
    private Integer quantidadeDePagamentos;
    private Integer quantidadeDeHoraExtra;

    public void realizarPagamento(Medico medico, Double valorPago) {

        if (Objects.isNull(medico) || Objects.isNull(valorPago)) {
            return;
        }

        if (medico.getAtivo() == false) {
            return;
        }

        if (valorPago <= 0) {
            return;
        }

        Double novoSalario = medico.getSalario() + valorPago;
        medico.setSalario(novoSalario);

        this.quantidadeDePagamentos++;
    }

    public void realizarPagamento(Medico medico, Double valorPago, Double horaExtra) {

        if (Objects.isNull(medico) || Objects.isNull(valorPago)) {
            return;
        }

        if (medico.getAtivo() == false) {
            return;
        }

        if (valorPago <= 0) {
            return;
        }

        if (Objects.isNull(horaExtra) || horaExtra <= 0) {
            return;
        }

        Double novoSalario = medico.getSalario() + valorPago + horaExtra;
        medico.setSalario(novoSalario);

        this.quantidadeDePagamentos++;
        this.quantidadeDeHoraExtra++;
    }

    public void desligarMedico(Medico medico) {
        if (Objects.isNull(medico) || medico.getAtivo() == false) {
            return;
        }
        
        medico.setAtivo(false);
    }

    // Construtor
    public Hospital(String nome) {
        this.nome = nome;
        this.quantidadeDePagamentos = 0;
        this.quantidadeDeHoraExtra = 0;
    }

    public String getNome() {
        return nome;
    }

    public Integer getQuantidadeDePagamentos() {
        return quantidadeDePagamentos;
    }

    public Integer getQuantidadeDeHoraExtra() {
        return quantidadeDeHoraExtra;
    }
}
