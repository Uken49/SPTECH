package projeto.poo;

public class ExemploConstrutor {
    public static void main(String[] args) {
        
        ContaCorrente conta1 = new ContaCorrente("Helder", "#032");
        ContaCorrente conta2 = new ContaCorrente(); // Iniciando com o construtor "default"
        
        System.out.println("Cheio: " + conta1.getTitular()); // Valores foram atribuidos
        System.out.println("Vazio: " + conta2.getTitular()); // Atributos sem valores
    }
}
