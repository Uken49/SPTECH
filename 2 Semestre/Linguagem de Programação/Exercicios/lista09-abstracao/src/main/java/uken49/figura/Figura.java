package uken49.figura;

public abstract class Figura {

    private String cor;
    private Integer espessura;

    public abstract Double calcularArea();

    @Override
    public String toString() {
        return "Cor: " + cor
                + "Espessura: " + espessura;
    }

    public String getCor() {
        return cor;
    }

    public Integer getEspessura() {
        return espessura;
    }

    public Figura(String cor, Integer espessura) {
        this.cor = cor;
        this.espessura = espessura;
    }

}
