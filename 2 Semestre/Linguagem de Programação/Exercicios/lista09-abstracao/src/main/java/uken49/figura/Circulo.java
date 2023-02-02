package uken49.figura;

public class Circulo extends Figura {

    private Double raio;

    @Override
    public Double calcularArea() {
        return raio * Math.PI;
    }

    @Override
    public String toString() {
        return "Cor: " + super.getCor()
                + "Espessura: " + super.getEspessura()
                + "Raio: " + raio;
    }

    public Circulo(String cor, Integer espessura, Double raio) {
        super(cor, espessura);
        this.raio = raio;
    }

}
