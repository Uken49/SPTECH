package lista03.metodos.ex02ibge;

public class DefinirClasse {

    Double calcularSalarioMinimo(Double renda) {
        Double salMinimo = 1045.0;
        
        return renda / salMinimo;
    }

    String classificarClasse(Double qtdSalMinimo) {
        if (qtdSalMinimo < 2) {
            
            return "E";
        } else if (qtdSalMinimo < 4) {

            return "D";
        } else if (qtdSalMinimo < 10) {

            return "C";
        } else if (qtdSalMinimo < 20) {

            return "B";
        } else {
            return "A";
        }

    }
}
