package uken49.figura;

public class Quadrado extends Figura {

    private Double lado;

    @Override
    public Double calcularArea() {
        return lado * lado;
    }

    @Override
    public String toString() {
        return "Cor: " + super.getCor()
                + "Espessura: " + super.getEspessura()
                + "Lado: " + lado;
    }

    public Quadrado(String cor, Integer espessura, Double lado) {
        super(cor, espessura);
        this.lado = lado;
    }

}
