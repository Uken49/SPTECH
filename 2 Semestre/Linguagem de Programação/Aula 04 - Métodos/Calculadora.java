package pkg04.aula;

public class Calculadora {
    
    //Método sem retorno
    void somarExibir(Integer num1, Integer num2){
        System.out.printf("Resultado: %d\n", (num1+num2));
    }
    
    /* Os métodos podem ter o mesmo nome
        isso é dito como "Sobrecarga de método"
        Esse conceito só não é possível caso:
            - A assinatura do método for identica (mesmo tipo e quantidade)
            - Métodos iguais sendo um deles "void"
    
        O Java identifica o método desejado pela quantidade
            e tipo de váriavel.
        
        Esse conceito é muito utilizado na Orientação á Objetos
    */
    
    //Método com retorno
    Integer somar(Integer num1, Integer num2){
        return num1 + num2;
    }
    
    Integer somar(Integer num1, Integer num2, Integer num3){
        return num1 + num2;
    }
    
    Double somar(Double num1, Double num2){
        return num1 + num2;
    }
}