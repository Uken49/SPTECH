package projeto.poo;

public class App {

    public static void main(String[] args) {
        // ----------------- ContaCorrente.java -----------------

        // Chamando duas instâncias
        ContaCorrente conta1 = new ContaCorrente();
        ContaCorrente conta2 = new ContaCorrente();
        // É correto afirmar que a váriavel 'conta1' e 'conta2'
        // é do tipo 'ContaCorrente'

        // Atribuir um valor
        conta1.setNumero("001");
        conta1.setTitular("Brandão");

        // O 'Underline' é só para melhor visualização do código fonte,
        // não afeta cálculos ou o print 
        conta1.depositar(2_350.00);
        conta1.sacar(200.0);

        conta2.setNumero("002");
        conta2.setTitular("Yoshi");
        conta2.depositar(1_000.0);
        conta2.sacar(160.0);
        
        System.out.println("Número 01: " + conta1.getNumero());
        System.out.println("Titular 01: " + conta1.getTitular());
        System.out.println("Saldo 01: " + conta1.getSaldo());
        System.out.println("-".repeat(10));

        System.out.println("Número 02: " + conta2.getNumero());
        System.out.println("Titular 02: " + conta2.getTitular());
        System.out.println("Saldo 02: " + conta2.getSaldo());

        // ----------------- Aluno.java -----------------
        Aluno aluno1 = new Aluno();
        
        // Os atributos são privados, logo não há como manipular
        /*aluno1.ra = "#001";
        aluno1.nome = "Helder";
        aluno1.notaAc1 = 6.75;
        aluno1.notaAc2 = 5.25;*/
        
        // Manipulando da maneiro correta
        aluno1.setRa("#001");
        aluno1.setNome("Helder");
        aluno1.setNotaAc1(8.9);
        aluno1.setNotaAc2(6.5);
        
        // Chamando os métodos de retorno
//        System.out.println("Ra: " + aluno1.getRa());
//        System.out.println("Nome: " + aluno1.getNome());
//        System.out.println("Nota1: " + aluno1.getNotaAc1());
//        System.out.println("Nota2: " + aluno1.getNotaAc2());
        
        Double mediaRetirada = aluno1.obterMedia();
        mediaRetirada = 10.0; // Alterar a váriavel NÃO altera a nota de vdd
        
//        System.out.println("Média real: " + aluno1.obterMedia());
//        System.out.println("Média fora do objeto: " + mediaRetirada);
    }

}
