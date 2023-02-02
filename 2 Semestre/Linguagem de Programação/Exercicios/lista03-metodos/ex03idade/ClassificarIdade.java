package lista03.metodos.ex03idade;

public class ClassificarIdade {

    void classificarIdade(Integer idade){

        if (idade < 0) {
            
            System.out.println("Idade inválida!");
        }else if(idade < 2){
            
            System.out.println("Bebê");
        }else if(idade < 11){
            
            System.out.println("Criança");
        }else if(idade < 19){
            
            System.out.println("Adolescente");
        }else if(idade < 30){
            
            System.out.println("Jovem");
        }else if(idade < 60){
            
            System.out.println("Adulto");
        }else{
            System.out.println("Idoso");
        }
        
    }
}
