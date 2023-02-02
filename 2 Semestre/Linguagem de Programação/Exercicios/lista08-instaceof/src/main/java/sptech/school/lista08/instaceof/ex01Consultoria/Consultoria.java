package sptech.school.lista08.instaceof.ex01Consultoria;

import java.util.ArrayList;
import java.util.List;

public class Consultoria {
    private String nome;
    private Integer vagas;
    private List<Desenvolvedor> desenvolvedores;
    
    public Boolean existePorNome(String nome){
        
        return desenvolvedores.stream().anyMatch(str -> nome.equals(nome));
        
//        
//        for (Desenvolvedor desenvolvedor : desenvolvedores) {
//            if (desenvolvedor.equals(nome)) {
//                return true;
//            }
//        }
//        
//        return false;
        
    }
    
    public void contratar(Desenvolvedor d){
        if (this.vagas <= 0) {
            return;
        }
        
        desenvolvedores.add(d);
    }

    public Consultoria(String nome, Integer vagas) {
        this.nome = nome;
        this.vagas = vagas;
        this.desenvolvedores = new ArrayList();
    }
}
