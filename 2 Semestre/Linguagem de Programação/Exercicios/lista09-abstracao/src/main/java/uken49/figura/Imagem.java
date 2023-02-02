package uken49.figura;

import java.util.ArrayList;
import java.util.List;

public class Imagem {
    
    private List<Figura> figuras;
    
    public void adicionarFigura(Figura f){
        figuras.add(f);
    }
    
    public void exibeFiguras(){
        for (Figura figura : figuras) {
            System.out.println(figura);
        }
    }
    
    public void exibeSomaArea(){
        Double areaTotal = 0.0;
        
        for (Figura figura : figuras) {
            areaTotal += figura.calcularArea();
        }
        
        System.out.printf("Soma de todas as Áreas: %.2f", areaTotal);
    }
    
    public void exibeFiguraAreaMaior20(){
        for (Figura figura : figuras) {
            if (figura.calcularArea() > 20) {
                System.out.println(figura);
            }
        }
    }
    
    public void exibeQuadrado(){
        for (Figura figura : figuras) {
            if (figura instanceof Quadrado) {
                System.out.println(figura);
            }
        }
    }

    public Imagem() {
        this.figuras = new ArrayList();
    }

    
}
