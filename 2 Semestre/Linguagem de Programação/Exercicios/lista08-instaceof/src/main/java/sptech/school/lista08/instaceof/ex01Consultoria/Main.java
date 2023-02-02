package sptech.school.lista08.instaceof.ex01Consultoria;

public class Main {
    
    public static void main(String[] args) {
        Desenvolvedor dev1 = new Desenvolvedor("Romilda", 30, 5.0);
        Consultoria consultoria = new Consultoria("Tech4Tech", 5);
        
        consultoria.contratar(dev1);
        System.out.println(consultoria.existePorNome("Romilda"));
    }
}
