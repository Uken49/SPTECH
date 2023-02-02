package uken49.funcionario.abstracao;

import java.util.ArrayList;
import java.util.List;

public class Empresa {
    private List<Funcionario> funcionarios;

    public Empresa() {
        this.funcionarios = new ArrayList();
    }
    
    public void adicionarFunc(Funcionario f){
        funcionarios.add(f);
    }
    
    public void exibeTodos(){
        for (Funcionario funcionario : funcionarios) {
            System.out.println(funcionario);
        }
    }
    
    public void exibeTotalSalario(){
        for (Funcionario funcionario : funcionarios) {
            System.out.println(funcionario.calcSalario());
        }
    }
    
}
