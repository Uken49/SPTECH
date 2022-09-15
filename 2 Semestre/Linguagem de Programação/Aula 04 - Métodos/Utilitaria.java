package pkg04.aula;

public class Utilitaria {
    
    /*  Método - Tem o mesmo propósito que o 'function()' do javaScript
        Assinatura do método é composta por:
            - tipo de retorno
            - nome do método
            - parametros -> argumento
    */
    void exibirLinha(){
        System.out.println("-".repeat(30));
    }
    
    // O valor passado é mútavel
    void exibirNome(String nomeParaExibir){
        System.out.printf("*** %s ***", nomeParaExibir);
    }
    
    // Um método pode invocar outros métodos,
    // da mesma classe ou até mesmo de outras
    void exibirNomeComLinha(String nome){
        exibirLinha();
        exibirNome(nome);
        exibirLinha();
    }
}
