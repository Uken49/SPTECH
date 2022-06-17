-- CRIANDO BANCO CHAMADO DE Exercicio11
CREATE DATABASE Exercicio13;

-- USANDO O BANCO PARA FAZER O EXERCÍCIO
USE Exercicio13;

-- CRIANDO TABELA Departamento
CREATE TABLE Departamento(
	idDepto 		INT PRIMARY KEY,
    nomeDepto 		VARCHAR(45),
    fkGerente 		INT, -- CHAVE ESTRANGEIRA DA TABELA FUNCIONARIO (idFunc)
    dataInicioGer 	DATE
);

-- CRIANDO TABELA Funcionario
CREATE TABLE Funcionario(
	idFunc 			INT PRIMARY KEY,
    nomeFunc 		VARCHAR(30),
    salario 		DECIMAL(7,2),
    sexo 			CHAR(1), 
    CONSTRAINT chkSexo CHECK(sexo = 'm' OR sexo = 'f'),
    fkSupervisor 	INT, -- CHAVE ESTRANGEIRA DA TABELA FUNCIONARIO (idFunc) - RECURSIVIDADE
    dataNasc 		DATE,
    fkDepto 		INT, -- CHAVE ESTRANGEIRA DA TABELA DEPARTAMENTO (idDepto)
    CONSTRAINT Funcionario_fkDepto FOREIGN KEY (fkDepto) REFERENCES Departamento(idDepto) 
);

-- CRIANDO TABELA Projeto
CREATE TABLE Projeto(
	idProj 		INT PRIMARY KEY,
    nomeProj 	VARCHAR(45),
    localProj 	VARCHAR(45),
    fkDepto 	INT, -- CHAVE ESTRANGEIRA DA TABELA DEPARTAMENTO (idDepto)
    CONSTRAINT Projeto_fkDepto FOREIGN KEY (fkDepto) REFERENCES Departamento(idDepto)
);

-- CRIANDO TABELA FuncProj
CREATE TABLE FuncProj(
	fkFunc 		INT, -- CHAVE ESTRANGEIRA DA TABELA FUNCIONARIO (idFunc)
    fkProj		INT, -- CHAVE ESTRANGEIRA DA TABELA PROJETO (idProj)
    horas 		DECIMAL(3,1),
    PRIMARY KEY(fkFunc, fkProj), -- CHAVE PRIMÁRIA COMPOSTA - TABELA ASSOCIATIVA
    CONSTRAINT FuncProj_fkFunc FOREIGN KEY (fkFunc) REFERENCES Funcionario(idFunc),
    CONSTRAINT FuncProj_fkProj FOREIGN KEY (fkProj) REFERENCES Projeto(idProj)
);

-- INSERINDO REGISTROS NA TABELA Departamento
INSERT INTO Departamento VALUES
  (105, 'Pesquisa', 2, '2008-05-22'),
  (104, 'Administração', 7, '2015-01-01'),
  (101, 'Matriz', 8, '2001-06-19');

-- INSERINDO REGISTROS NA TABELA Funcionario
INSERT INTO Funcionario VALUES
  (1, 'Joao Silva', 3500, 'm', 2, '1985-01-09', 105),
  (2, 'Fernando Wong', 4500, 'm', 8, '1975-12-08', 105),
  (3, 'Alice Sousa', 2500, 'f', 7, '1988-01-09', 104),
  (4, 'Janice Morais', 4300, 'f', 8, '1970-06-20', 104),
  (5, 'Ronaldo Lima', 3800, 'm', 1, '1982-09-15', 105),
  (6, 'Joice Leite', 2500, 'f', 1, '1992-07-31', 105),
  (7, 'Antonio Pereira', 2500, 'm', 4, '1989-03-29', 104),
  (8, 'Juliano Brito', 5500, 'm', NULL, '1957-11-10', 101);

-- INSERINDO REGISTROS NA TABELA Projeto
INSERT INTO Projeto VALUES
  (1, 'Produto X', 'Santo André', 105),
  (2, 'Produto Y', 'Itu', 105),
  (3, 'Produto Z', 'São Paulo', 105),
  (10, 'Informatização', 'Mauá', 104),
  (20, 'Reorganização', 'São Paulo', 101),
  (30, 'Benefícios', 'Mauá', 104);

-- INSERINDO REGISTROS NA TABELA FuncProj
INSERT INTO FuncProj VALUES
  (1, 1, 32.5),  (1, 2, 7.5),  (5, 3, 40.0),
  (6, 1, 20.0),  (6, 2, 20.0), (2, 2, 10.0),
  (2, 3, 10.0),  (2, 10, 10.0), (2, 20, 10.0),
  (3, 30, 30.0), (3, 10, 10.0), (7, 10, 35.0),
  (7, 30, 5.0),  (4, 30, 20.0), (4, 20, 15.0),
  (8, 20, NULL);

-- ALTERANDO OS CAMPOS DAS TABELAS PARA TRANSFORMAR EM FOREIGN KEY
ALTER TABLE Departamento ADD 
  CONSTRAINT Departamento_fkGerente FOREIGN KEY (fkGerente) REFERENCES Funcionario (idFunc);

ALTER TABLE Funcionario ADD 
  CONSTRAINT Funcionario_fkSupervisor FOREIGN KEY (fkSupervisor) REFERENCES Funcionario (idFunc); -- RECURSIVIDADE

-- 1. Exibir os dados de cada tabela separadamente (confira se os dados foram inseridos
-- corretamente). 
SELECT * FROM Departamento;
SELECT * FROM Funcionario;
SELECT * FROM Projeto;
SELECT * FROM FuncProj;

-- 2. Inserir mais o seguinte funcionário na tabela Funcionario:
-- idFunc: null, nomeFunc: Cecília Ribeiro, salario: 2800, sexo: f, fkSupervisor: null,
-- dataNasc: 1980-04-05, fkDepto: 104
-- Conseguiu inserir? Por que?
-- Deu erro devido a chave primaria não pode ser null.
insert into funcionario values (null,'cecilia Ribeiro', 2800, 'f', null,'1980-04-05', 104);

-- 3. Inserir mais o seguinte funcionário na tabela Funcionario:
-- idFunc: 3, nomeFunc: Alice Sousa, salario: 2800, sexo: f, fkSupervisor: 4, dataNasc:
-- 1980-04-05, fkDepto: 104
-- Conseguiu inserir? Por que?
-- Não foi possivel realizar p insert porque não podem haver duas chaves primarias com o mesmo
-- valor na mesma tabela.
insert into funcionario values (3,'Alice Sousa', 2800, 'f', 4,'1980-04-05', 104);


-- 4. Inserir mais o seguinte funcionário na tabela Funcionario:
-- idFunc:9, nomeFunc: Cecília Ribeiro, salario: 2800, sexo: f, fkSupervisor: 4, dataNasc:
-- 1980-04-05, fkDepto: 107
-- Não, pois o fkDepto não existe na tabela departamento.
INSERT INTO Funcionario
	VALUES(9, 'Cecília Ribeiro', 2800, 'f', 4, '1980-04-05', 107);


-- 5. Inserir mais o seguinte funcionário na tabela Funcionario:
-- idFunc:9, nomeFunc: Cecília Ribeiro, salario: 2800, sexo: f, fkSupervisor: 4, dataNasc:
-- 1980-04-05, fkDepto: 104
-- Conseguiu inserir? Por que?
-- Esse comando deu certo pois os valores estão corretos
insert into Funcionario values (9,'Cecília Ribeiro',2800,'f',4,'1980-04-05',104);

-- 6. Excluir a tupla (registro) da tabela FuncProj, em que fkFunc=3 e fkProj = 10. Conseguiu
-- excluir? Por que?
-- Esse comando deu certo pois os valores estão corretos e o idFuncProj não está em outra tabela
DELETE FROM FuncProj WHERE fkFunc = 3 AND fkProj = 10;

-- 7. Excluir a tupla da tabela Funcionario, em que idFunc=4. Conseguiu excluir? Por que?
-- Não, pois o dado está referenciado em outra tabela
DELETE FROM Funcionario
	WHERE idFunc = 4;

-- 8. Excluir a tupla da tabela Funcionário, em que idFunc=2. Conseguiu excluir? Por que?
-- Não, pois o idFunc =2 serve com fkGerente e é referenciado em outra tabela 
DELETE FROM funcionario WHERE idFunc = 2;

-- 9. Alterar o salário do Funcionário com idFunc=3 para 2800. Conseguiu alterar? Por que?
UPDATE Funcionario SET salario = 2800 WHERE idFunc = 3;
-- É possível alterar pois existe um registro na tabela Funcionario cujo idFunc é igual a 3

-- 10. Alterar o fkDepto do Funcionário com idFunc=3 para 101. Conseguiu alterar? Por que?
update Funcionario set fkDepto = 101 where idFunc = 3;
-- A alteração funcionou pois as id`s existem em outra tabela

-- 11. Alterar o fkDepto do Funcionário com idFunc=3 para 107. Conseguiu alterar? Por que?
update Funcionario set fkDepto = 107 where idFunc = 3;
-- O valor não foi atualizado pois a na tabela departamento não existe Depto 107

-- 12. Exibir a data de nascimento e o salário do funcionário João Silva.
SELECT dataNasc, salario FROM funcionario WHERE idFunc = 1;

-- 13. Exibir uma lista apenas dos salários de todos os funcionários.
select salario from Funcionario;

-- 14. Exibir uma lista apenas dos salários distintos de todos os funcionários.
select distinct salario from Funcionario;

-- 15. Exibir os dados dos funcionários ordenados pelo nome.
select * from funcionario order by nomeFunc;

-- 16. Exibir os dados dos funcionários ordenados pelo salário, de forma decrescente.
select * from funcionario order by salario desc;

-- 17. Exibir os dados dos funcionários que tenham salário entre 2000 e 4000.
select * from funcionario where salario >= 2000 and salario <= 4000;
-- ou
select * from funcionario where salario between 2000 and 4000;

-- 18. Exibir os nomes e os salários dos funcionários cujos nomes começam com a letra ‘J’.
select nomeFunc, salario from Funcionario where nomeFunc like 'J%';

-- 19. Exibir os nomes e os salários dos funcionários cujos nomes terminam com a letra ‘a’.
select nomeFunc, salario from Funcionario where nomeFunc like '%a';

-- 20. Exibir os nomes dos funcionários que tem a letra ‘n’ como terceira letra do nome.
select nomeFunc from Funcionario where nomeFunc like '__n%';

-- 21. Exibir os nomes e as datas de nascimento dos funcionários cujos nomes tenham a letra
-- ‘S’ como 5ª letra de trás para frente.
select nomeFunc, dataNasc from Funcionario where nomeFunc like '%S____';

-- 22. Exibir os dados dos funcionários que trabalham no departamento Pesquisa.
select * from funcionario where fkDepto = 105;
-- Mesmo comando mas usando o nome do depto, supondo que não sei o idDepto do Departamento 'Pesquisa"
select * from funcionario join departamento 
    on fkDepto = idDepto and nomeDepto = 'Pesquisa';
-- Mesmo comando mas usando subconsulta ou subquery
select * from Funcionario where fkDepto =
     (select idDepto from Departamento where nomeDepto = 'Pesquisa');

-- Exibir os funcionários dos departamentos cujo idDepto > 102
-- nesse caso, a subquery retorna mais de um valor, e por isso tenho que usar fkDepto in
select * from Funcionario where fkDepto in
     (select idDepto from Departamento where idDepto > 102);

-- 23. Exibir os dados dos funcionários que trabalham no departamento Pesquisa e que
-- tenham salário acima de 3500.
-- com subconsulta
select * from Funcionario where fkDepto =
     (select idDepto from Departamento where nomeDepto = 'Pesquisa') and salario > 3500;
-- sem subconsulta, sem JOIN     
select * from Funcionario where fkDepto = 105 and salario > 3500;
-- com JOIN
select *from Funcionario join Departamento on fkDepto = idDepto where nomeDepto ='pesquisa'
                                                                  and salario > 3500; 

-- 24.Exibir os dados dos funcionários que trabalham no departamento Pesquisa e que
-- tenham o nome com inicial ‘J’.
select * from Funcionario where fkDepto = 105 and nomeFunc like 'J%';

-- 25. Exibir o idFunc e o nome de cada funcionário, juntamente com o idFunc e o nome do seu
-- supervisor. Faça com que o título da coluna seja “idFuncionario” para funcionário e
-- “idSupervisor” para o id do supervisor.
select f.idFunc as idFuncionario, f.nomeFunc, s.idFunc as idSupervisor, s.nomeFunc 
from funcionario as f join funcionario as s on f.fkSupervisor = s.idFunc;
select f.idFunc as idFuncionario, f.nomeFunc, s.idFunc as idSupervisor, s.nomeFunc 
from funcionario as f, funcionario as s where f.fkSupervisor = s.idFunc;

-- 26. Exibir para cada projeto localizado em São Paulo, o idProj do projeto, o número do
-- departamento que o controla, o nome e a data de nascimento do gerente do
-- departamento.
select idProj, projeto.fkDepto, nomeFunc, dataNasc from 
   projeto join departamento on projeto.fkDepto = idDepto and localProj = 'São Paulo'
           join funcionario on idFunc = fkGerente;

-- 27. Exibir o idFunc e o nome do funcionário, o projeto e o nome do projeto em que trabalha,
-- e a quantidade de horas que trabalha nesse projeto.
select idFunc, nomeFunc, projeto.*, horas from 
     Funcionario join FuncProj on FuncProj.fkFunc = idFunc
				 join Projeto on idProj = fkProj;

-- 28. Exibir os nomes dos funcionários que nasceram antes de 1980.
select * from funcionario where dataNasc < '1980-01-01';

-- 29. Exibir a quantidade de salários diferentes que existem na empresa.
select count(distinct salario) as 'qtde de salarios diferentes' from funcionario;

-- 30. Exibir a quantidade de locais diferentes de projeto.
	select count(distinct localProj) as 'qtde de locais diferentes' from Projeto;

-- 31. Exibir o salário médio da empresa e a soma dos salários.
select round(avg(salario), 2)  as 'Salário Médio', sum(salario) as 'Soma dos Salários' from Funcionario;

-- 32. Exibir o menor e o maior salário da empresa.
select max(salario) as 'Maior Salario', min(salario) as 'Menor Salario' from funcionario;

-- 33. Exibir o idDepto, o salário médio e a soma do salário de cada departamento (agrupado
-- por departamento)
select fkDepto as 'idDepto', round(avg(salario), 2) as 'média dos salários',
sum(salario) as 'soma dos salários' from Funcionario group by fkDepto;

-- 34. Exibir o idDepto, o menor e o maior salário de cada departamento (agrupado por
-- departamento).
SELECT fkDepto AS 'idDepto', MIN(salario) AS 'Menor salário', 
MAX(salario) as 'Maior salário' FROM Funcionario GROUP BY fkDepto;

-- 35. Inserir mais os seguintes funcionários na tabela Funcionário:
--  idFunc nomeFunc        salario sexo idSupervisor dataNasc    fkDepto
--     10  José da Silva    1800     m     3          2000-10-12  null
--     11  Benedito Almeida 1200     m     5          2001-09-01  null
insert into funcionario values(10,  'José da Silva', 1800, 'm', 3, '2000-10-12',  null),
							  (11, 'Benedito Almeida', 1200, 'm', 5, '2001-09-01',  null);

-- 36. Inserir mais o seguinte departamento na tabela Departamento:
--  idDepto nomeDepto idGerente dataInicioGer
--    110      RH         3      2018-11-10
Insert into Departamento values (110, 'RH', 3, '2018-11-10');

-- 37. Exibir os funcionários e seus departamentos correspondentes, inclusive os que não
-- estão alocados em nenhum departamento.
select * from funcionario left join departamento on idDepto=fkDepto;
select * from departamento right join funcionario on idDepto=fkDepto;

-- 38. Exibir os funcionários e seus departamentos correspondentes, inclusive os
-- departamentos que não tem funcionários alocados.
select idFunc, nomeFunc, idDepto, nomeDepto from Funcionario right join Departamento on idDepto = fkDepto;
select idFunc, nomeFunc, idDepto, nomeDepto from Departamento left join Funcionario on idDepto = fkDepto;

-- DAQUI EM DIANTE NÃO TEM NO ENUNCIADO:

-- 39. Exibir os funcionários e seus departamentos correspondentes,
--  mas de forma que apareça os funcionários que não estão alocados a nenhum dpto
--  e tb os deptos que não tem funcionário alocado
select * from funcionario left join departamento on idDepto=fkDepto
   union
select * from funcionario right join departamento on idDepto=fkDepto;

-- SUBCONSULTA OU SUBQUERY

-- USANDO SUBQUERY COMO FILTRO
-- 40. Exibir os nomes dos funcionários e seus salários sendo que o salário 
--     é maior do que a média dos salários
SELECT nomeFunc, salario FROM Funcionario WHERE salario > 
(SELECT avg(salario) as "Média dos salários" FROM Funcionario);

-- USANDO SUBQUERY PARA TRAZER UMA COLUNA COMO RESULTADO
-- 41. Exibir o idProj, o nome do projeto e a quantidade de funcionários que trabalha 
--     em cada projeto
SELECT idProj, nomeProj FROM Projeto;
SELECT idProj, nomeProj,
 (SELECT COUNT(fkFunc) FROM FuncProj WHERE fkProj = idProj GROUP BY fkProj) AS QtdFunc
  FROM Projeto;

-- COMO SE "DROPA" UMA CONSTRAINT DE FK?
-- Exemplo:
ALTER TABLE Funcionario DROP FOREIGN KEY Funcionario_fkSupervisor;