package uken49.figura;

public class Retangulo extends Figura{
    
    private Double base;
    private Double altura;
    
    @Override
    public Double calcularArea() {
        return altura * base;
    }
    
    @Override
    public String toString() {
        return "Cor: " + super.getCor()
                + "Espessura: " + super.getEspessura()
                + "Altura: " + altura
                + "Base: " + base;
    }
    
    public Retangulo(String cor, Integer espessura, Double base, Double altura) {
        super(cor, espessura);
        this.base = base;
        this.altura = altura;
    }
    
}
