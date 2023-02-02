package com.bandtec.projeto.lista.desafio;

import java.util.List;
import java.util.ArrayList;
import java.util.Objects;

public class ListaUtil {

    private List<Integer> inteiros;

    public ListaUtil() {
        this.inteiros = new ArrayList<>();
    }

    public void add(Integer valor) {
        if (Objects.isNull(valor)) {
            return;
        }

        inteiros.add(valor);
    }

    public void remove(Integer valor) {
        for (int i = 0; i < inteiros.size(); i++) {

            if (Objects.isNull(valor)) {
                return;
            }

            if (valor == inteiros.get(i)) {
                inteiros.remove(i);

                return;
            }
        }

    }

    public Integer count() {
        return inteiros.size();
    }

    public Integer countPares() {
        Integer qtdPares = 0;

        for (Integer inteiro : inteiros) {
            if (inteiro % 2 == 0) {
                qtdPares++;
            }
        }

        return qtdPares;
    }

    public Integer countImpares() {
        Integer qtdImpares = 0;

        for (Integer inteiro : inteiros) {
            if (inteiro % 2 != 0) {
                qtdImpares++;
            }
        }

        return qtdImpares;
    }

    public Integer somar() {
        Integer somaTotal = 0;

        for (Integer inteiro : inteiros) {
            somaTotal += inteiro;
        }

        return somaTotal;
    }

    public Integer getMaior() {
        Integer maior = 0;

        for (Integer inteiro : inteiros) {
            if (inteiro > maior) {
                maior = inteiro;
            }
        }

        return maior;
    }

    public Integer getMenor() {
        Integer menor = 0;

        for (Integer inteiro : inteiros) {
            if (inteiro < menor) {
                menor = inteiro;
            }
        }
        return menor;
    }

    public Boolean hasDuplicidade() {
        Integer qtdDuplicado;
        for (Integer numeroAtual : inteiros) {
        qtdDuplicado = 0;
        
            for (Integer numeroLista : inteiros) {
                if (numeroAtual == numeroLista) {
                    qtdDuplicado++;
                    
                }
                
                // Como ele vai se comparar, ent sempre vai dar 1
                if (qtdDuplicado == 2) { 
                    return true;
                }
            }
        }

        return false;
    }
}
