package projeto.poo;
// A classe é uma descrição e definição das funções dos objetos
// Os objetos são as intâncias que é chamado a partir da classe

// Uma classe é como uma folha em branco
public class ContaCorrente { 
    
    // Atributos de instância <- Usaremos essa estratégia
    // Existe também atributo de classe
    private Double saldo; // Inicializando para evitar erro
    private String numero;
    private String titular;

    // "Construtor" é um "método especial" que é chamado ao iniciar a instância
    // Com ele, é possível 'informar' os argumentos que devem ser passados
    // Padrão: tem o nome da classe; não possui nenhum tipo de retorno
    public ContaCorrente(String numero, String titular) {
        this.numero = numero;
        this.titular = titular;
        this.saldo = 0.0;
    }
    
    // Quando o construtor não é criado, ele por "default" cria essa estrutura
    // Como existem dois construtores com o mesmo nome, então é um caso de
        // "Sobrecarga de métodos" tanto esse quanto o outro podem
            // ser inicializados.
    public ContaCorrente(){
    }

    
    public Double getSaldo() {
        return saldo;
    }

    // 'setSaldo' virou 'depositar' que é o nome do comportamento do negócio
    public void depositar(Double deposito) {
        if (deposito > 0){
            this.saldo += deposito;
        }
    }
    
    public void sacar(Double saque) {
        if (saque > 0){
            this.saldo -= saque;
        }
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getTitular() {
        return titular;
    }

    public void setTitular(String titular) {
        this.titular = titular;
    }
    
}
