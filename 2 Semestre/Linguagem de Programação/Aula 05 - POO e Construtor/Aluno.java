package projeto.poo;

public class Aluno {

    /*
        Modificadores de acesso:
            - default
            - private: Apenas a própria classe pode acessar e manipular o atributo
            - public: Classes externas podem acessar e maniplar o atributo
            - protected
     */
    // Váriaveis que estejam no escopo da classe é chamado de 'Atributo'
    private String ra;
    private String nome;
    private Double notaAc1 = 0.0;
    private Double notaAc2 = 0.0;

    // 'get' geralmente é um método que retorno o valor
    public String getRa() {
        // É possível usar 'this.', porém não tem necessidade nesse caso
        return ra;
    }

    // 'set' geralmente é um método sem retorno que substitui um valor
    public void setRa(String ra) {
        /* 'ra = ra' daria ambiguidade
            logo o 'this.' se refere ao atributo da classe
            this."atributo" = "parâmetro"
        
            É usado para lidar com ambiguidade
                (se o atributo for igual aoargumento)*/

        this.ra = ra;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Double getNotaAc1() {
        return notaAc1;
    }

    public void setNotaAc1(Double notaAc1) {
        if (isNotaValida(notaAc1)) {
            this.notaAc1 = notaAc1;
        }
    }

    public Double getNotaAc2() {
        return notaAc2;
    }

    public void setNotaAc2(Double notaAc2) {
        if (isNotaValida(notaAc2)) {
            this.notaAc2 = notaAc2;
        }
    }

    // Comportamento -> Métodos
    // Método é igual a função, porém a convenção é chamar de Métodos
    // Como os parametros já são os atributos, então não é necessário
    // chamar parâmetros
    Double obterMedia() {
        return (notaAc1 + notaAc2) / 2;
    }
    
    private Boolean isNotaValida(Double nota){
        return nota >= 0.0 && nota <= 10.0;
    }
}
