package com.uken.projeto2;

public class Interpolacao {

    public static void main(String[] args) {
        
        String nome = "Helder";
        Integer idade = 29;
        Double altura = 1.73;
        
        System.out.println("Nome: " + nome + "\nidade: " + idade + "\naltura: " + altura + "\n");
        
        /*
            Esse monstro é a concatenação:
            .format("frase que será escrita", var1, var2, var3);
            
            Para cada tipo de váriavel tem um tipo especifico de caractere que
            tem que ser colocado dentre as aspas:
            %s -> para String
            %d -> para double
            %.2f -> para float (o número é a quantidade casas decimais que serão
                    exibidas)
        */
        String frase = 
                String.format("Nome: %s \nIdade: %d, \nAltura: %.2f",
                        nome, idade, altura);
        
         System.out.printf("Nome: %s \nIdade: %d, \nAltura: %.2f\n\n",
                        nome, idade, altura); //Dá no mesmo que o de cima
        
        /*
            A diferença entre o printf e o String.format é que o segundo 
                dá para guardar em váriavel
        */
        
        System.out.println(frase);
    }

}
