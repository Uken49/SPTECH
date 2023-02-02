package uken49.figura;

public class TesteMaroto {

    public static void main(String[] args) {
        Imagem image = new Imagem();
        Quadrado square = new Quadrado("Vermelho", 20, 40.0);
        Circulo circle = new Circulo("Red", 30, 20.0);

        image.adicionarFigura(square);
        image.adicionarFigura(circle);
        image.exibeSomaArea();
    }
}
