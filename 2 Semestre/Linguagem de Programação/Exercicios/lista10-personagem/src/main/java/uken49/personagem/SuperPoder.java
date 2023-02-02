package uken49.personagem;

public class SuperPoder {

    private String nome;
    private String categoria;

    public String getNome() {
        return nome;
    }

    public String getCategoria() {
        return categoria;
    }

    @Override
    public String toString() {
        return "Nome: " + nome
                + "Categoria: " + categoria;
    }

    public SuperPoder(String nome, String categoria) {
        this.nome = nome;
        this.categoria = categoria;
    }
    
}
