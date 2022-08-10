create database PraticaFuncionario;
use PraticaFuncionario;

-- Criação das tabelas
create table Setor (
 idSetor int primary key auto_increment,
 nomeSetor varchar(45),
 andarSetor char(2)
);

create table Funcionario (
  idFuncionario int primary key auto_increment,
  fkSupervisor int,
  foreign key (fkSupervisor) references Funcionario (idFuncionario),
  nomeFuncionario varchar(45),
  telefone char(11),
  salario decimal(8,2) check (salario > 0),
  fkSetor int,
  foreign key (fkSetor) references Setor(idSetor)
) auto_increment = 1000;

create table Acompanhante (
  idAcompanhante int,
  fkFuncionario int,
  foreign key (fkFuncionario) references Funcionario (idFuncionario),
  primary key (idAcompanhante, fkFuncionario),
  nomeAcompanhante varchar(45),
  tipoRelacao varchar(45),
  dataNasc date
);

-- Inserção de dados nas tabelas
INSERT INTO Setor (nomeSetor,andarSetor) VALUES
('Recursos Humanos','01')
,('Limpeza','02')
,('Manutenção','02')
,('Gerência','03');

INSERT INTO funcionario
(nomeFuncionario, telefone, salario, fkSetor, fkSupervisor)
VALUES
('Jabiscleudo Soares','11984512342',9599.99,1,null)
,('Jucimara Pires','11329212342',3099.01,1,1000)
,('Kleber Antagônico','11329256342',5099,2,1001)
,('Roselinda Campos','11329846342',3200,3,null)
,('Romilda Alvarenga','11984512342',4099.99,1,1000);

INSERT INTO acompanhante
(fkFuncionario, idAcompanhante, nomeAcompanhante, tipoRelacao, dataNasc)
VALUES
(1000, 1,'Pericles Soares', 'Filho', '2000-03-21')
,(1000, 2,'Humberto Nilton', 'Pai', '1950-05-10')
,(1001, 1,'Milena Pires', 'Irmã', '1987-12-09')
,(1003, 1,'Katarina Tubarão', 'Amiga', '1988-12-16')
,(1003, 2,'Mario Bragancia', 'Marido', '1990-01-01');

-- e) Exibir todos os dados de cada tabela criada, separadamente.
select * from setor;
select * from funcionario;
select * from acompanhante;

-- f) Fazer os acertos da chave estrangeira, caso não tenha feito no momento da criação.
--   Esse acerto já foi feito nos create table

-- g) Exibir os dados dos setores e dos seus respectivos funcionários.
select * from setor, funcionario where fksetor = idsetor;

-- h) Exibir os dados de um determinado setor (informar o nome do setor na consulta) e dos seus
-- respectivos funcionários.
select * from setor, funcionario where fksetor = idsetor 
   and nomeSetor = 'recursos humanos';

-- i) Exibir os dados dos funcionários e de seus acompanhantes.
select * from Funcionario, Acompanhante where fkFuncionario = idFuncionario;

-- j) Exibir os dados de apenas um funcionário (informar o nome do funcionário) e os dados de
-- seus acompanhantes.
select * from Funcionario, Acompanhante where fkFuncionario = idFuncionario
 and nomeFuncionario = 'Jabiscleudo Soares';

-- k) Exibir os dados dos funcionários, dos setores em que trabalham e dos seus
-- acompanhantes.
Select * from Funcionario, Setor, Acompanhante
where fkSetor = idSetor
and fkFuncionario = idFuncionario;

-- l) Exibir os dados dos funcionários e dos seus coordenadores.
select * from Funcionario as Funcionario, Funcionario as Supervisor 
where Funcionario.fkSupervisor = Supervisor.idFuncionario;

-- m) Exibir os dados dos funcionários e dos seus coordenadores, mas somente de um
-- coordenador.
select * from Funcionario as Funcionario, Funcionario as Supervisor 
where Funcionario.fkSupervisor = Supervisor.idFuncionario 
and Funcionario.idFuncionario = 1001;

-- n) Exibir os dados dos setores, dos funcionários e dos seus coordenadores.
select * from setor, funcionario as funcionario, funcionario as coordenador 
where funcionario.fkSetor=idSetor and funcionario.fkSupervisor= coordenador.idFuncionario;  

-- o) Exibir os dados dos funcionários, dos seus coordenadores e dos acompanhantes dos
-- funcionários.
select * from funcionario as funcionario, funcionario as coordenador, acompanhante 
where funcionario.fkSupervisor= coordenador.idFuncionario and 
acompanhante.fkFuncionario= funcionario.idFuncionario;

-- p) Exibir os dados dos funcionários, dos seus coordenadores e dos acompanhantes dos
-- coordenadores.
select * from funcionario as funcionario, funcionario as coordenador, acompanhante 
where funcionario.fkSupervisor= coordenador.idFuncionario and 
acompanhante.fkFuncionario= coordenador.idFuncionario;