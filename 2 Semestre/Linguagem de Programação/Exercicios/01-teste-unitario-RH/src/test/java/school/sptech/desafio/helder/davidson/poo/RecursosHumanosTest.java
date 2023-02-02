package school.sptech.desafio.helder.davidson.poo;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class RecursosHumanosTest {


  // PROMOVER COLABORADOR

  @Test
  @DisplayName("promoverColaborador() - quando acionado com valor inválido (colaborador - nulo), não deverá alterar cargo e salário")
  void promoverColaboradorComColaboradorNulo() {

    RecursosHumanos rh = new RecursosHumanos();

    assertDoesNotThrow(() -> rh.promoverColaborador(null, "Dev Pleno", 10_000.0));
  }

  @Test
  @DisplayName("promoverColaborador() - quando acionado com valor inválido (salário - nulo), não deverá alterar cargo e salário")
  void promoverColaboradorComSalarioNulo() {

    Colaborador colaborador = new Colaborador("Diego Brito", "Dev jr", 1_000.0);

    RecursosHumanos rh = new RecursosHumanos();

    rh.promoverColaborador(colaborador, "Dev Pleno", null);

    assertEquals("Dev jr", colaborador.getCargo());
    assertEquals(1_000.0, colaborador.getSalario());
  }

  @Test
  @DisplayName("promoverColaborador() - quando acionado com valor inválido (cargo - nulo), não deverá alterar cargo e salário")
  void promoverColaboradorComCargoNulo() {

    Colaborador colaborador = new Colaborador("Diego Brito", "Dev jr", 1_000.0);

    RecursosHumanos rh = new RecursosHumanos();

    rh.promoverColaborador(colaborador, null, 10_000.0);

    assertEquals("Dev jr", colaborador.getCargo());
    assertEquals(1_000.0, colaborador.getSalario());
  }

  @Test
  @DisplayName("promoverColaborador() - quando acionado com valor inválido, não deverá alterar cargo e salário")
  void promoverColaboradorComValoresInvalidos() {

    Colaborador colaborador = new Colaborador("Diego Brito", "Dev jr", 1_000.0);

    RecursosHumanos rh = new RecursosHumanos();

    rh.promoverColaborador(colaborador, "Dev Pleno", 900.0);

    assertEquals("Dev jr", colaborador.getCargo());
    assertEquals(1_000.0, colaborador.getSalario());
  }

  @Test
  @DisplayName("promoverColaborador() - quando acionado com valor válido, deverá alterar cargo e salário")
  void promoverColaboradorComValoresValidos() {

    Colaborador colaborador = new Colaborador("Diego Brito", "Dev jr", 2_000.0);

    RecursosHumanos rh = new RecursosHumanos();

    rh.promoverColaborador(colaborador, "Dev Pleno", 3_000.0);

    assertEquals("Dev Pleno", colaborador.getCargo());
    assertEquals(3_000.0, colaborador.getSalario());
  }

  // REAJUSTAR SALARIO

  @Test
  @DisplayName("reajustarSalario() - quando acionado, não deverá ocasionar NullPointerException")
  void reajustarSalarioComPorcentagemNulo() {

    RecursosHumanos rh = new RecursosHumanos();

    Colaborador colaborador = new Colaborador("Diego Brito", "Dev jr", 2_000.0);

    assertDoesNotThrow(() -> rh.reajustarSalario(colaborador, null));
  }

  @Test
  @DisplayName("reajustarSalario() - quando acionado, não deverá ocasionar NullPointerException")
  void reajustarSalarioComColaboradorNulo() {

    RecursosHumanos rh = new RecursosHumanos();

    assertDoesNotThrow(() -> rh.reajustarSalario(null, 10.0));
  }

  @Test
  @DisplayName("reajustarSalario() - quando acionado com valor inválido (negativo, -10) não deverá alterar salário")
  void reajustarSalarioComValorNegativo() {

    Colaborador colaborador = new Colaborador("Diego Brito", "Dev jr", 2_000.0);

    RecursosHumanos rh = new RecursosHumanos();

    rh.reajustarSalario(colaborador, -10.0);

    double novoSalario = 2_000.0;

    assertEquals(novoSalario, colaborador.getSalario());
  }

  @Test
  @DisplayName("reajustarSalario() - quando acionado com valor inválido (0) não deverá alterar salário")
  void reajustarSalarioComValorZerado() {

    Colaborador colaborador = new Colaborador("Diego Brito", "Dev jr", 2_000.0);

    RecursosHumanos rh = new RecursosHumanos();

    rh.reajustarSalario(colaborador, 0.0);

    double novoSalario = 2_000.0;

    assertEquals(novoSalario, colaborador.getSalario());
  }

  @Test
  @DisplayName("reajustarSalario() - quando acionado com valor válido deverá alterar salário")
  void reajustarSalarioComValorValido() {

    Colaborador colaborador = new Colaborador("Diego Brito", "Dev jr", 2_000.0);

    RecursosHumanos rh = new RecursosHumanos();

    rh.reajustarSalario(colaborador, 10.0);

    double novoSalario = 2_200.0;

    assertEquals(novoSalario, colaborador.getSalario(), 1.0);
  }

  @Test
  @DisplayName("getQuantidadeReajustes() - quando acionado logo após falha na operação de reajuste, não deve sofrer alterações")
  void getQuantidadeReajusteNaoDeveSofrerAlteracoes() {

    Colaborador colaborador1 = new Colaborador("Diego Brito", "Dev jr", 2_000.0);
    Colaborador colaborador2 = new Colaborador("Raíssa", "Dev jr", 2_500.0);

    RecursosHumanos rh = new RecursosHumanos();

    rh.reajustarSalario(colaborador1, -5.0);
    rh.reajustarSalario(colaborador2, 10.0);

    double salarioNaoModificado = 2_000.0;
    double novoSalario2 = 2_750.0;

    assertEquals(salarioNaoModificado, colaborador1.getSalario(), 1.0);

    assertEquals(novoSalario2, colaborador2.getSalario(), 1.0);

    assertEquals(1, rh.getQuantidadeReajustes());
  }

  @Test
  @DisplayName("getQuantidadeReajustes() - quando acionado logo após criação do objeto RH, deve retornar zero")
  void getQuantidadeReajusteInicialmente() {

    RecursosHumanos rh = new RecursosHumanos();

    assertEquals(0, rh.getQuantidadeReajustes());
  }

  @Test
  @DisplayName("getquantidadePromovidos() - quando acionado logo após criação do objeto RH, deve retornar zero")
  void getQuantidadePromovidosInicialmente() {

    RecursosHumanos rh = new RecursosHumanos();

    assertEquals(0, rh.getQuantidadeReajustes());
  }

}