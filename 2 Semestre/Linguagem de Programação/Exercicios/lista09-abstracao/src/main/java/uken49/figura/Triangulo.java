package uken49.figura;

public class Triangulo extends Figura {

    private Double base;
    private Double altura;

    @Override
    public Double calcularArea() {
        return (base * altura) / 2;
    }

    @Override
    public String toString() {
        return "Cor: " + super.getCor()
                + "Espessura: " + super.getEspessura()
                + "Altura: " + altura
                + "Base: " + base;
    }

    public Triangulo(String cor, Integer espessura, Double base, Double altura) {
        super(cor, espessura);
        this.base = base;
        this.altura = altura;
    }

    
}
