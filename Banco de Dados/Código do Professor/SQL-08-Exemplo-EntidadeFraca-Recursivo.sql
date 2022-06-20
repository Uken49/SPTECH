CREATE DATABASE Exemplo_EntidadeFraca_Recursivo;
USE Exemplo_EntidadeFraca_Recursivo;

-- Criação da tab Funcionario, já com a fkSupervisor do relacionamento recursivo
CREATE TABLE Funcionario (
	idFuncionario INT PRIMARY KEY AUTO_INCREMENT
    ,nomeFuncionario VARCHAR(45)
    ,salario DECIMAL(7,2) CHECK (salario>0)
    ,sexo CHAR(1) CHECK(sexo = 'm' OR sexo = 'f' OR sexo = 'n')
    ,fkSupervisor INT, FOREIGN KEY(fkSupervisor) REFERENCES Funcionario(idFuncionario)
) AUTO_INCREMENT = 1000;

-- Criança da tabela Dependente -- Essa tabela é uma entidade fraca
CREATE TABLE Dependente (
	fkFuncionario INT, FOREIGN KEY(fkFuncionario) REFERENCES Funcionario(idFuncionario)
    ,idDependente INT -- NÃO COLOCAR PRIMARY KEY AQUI NEM AUTO_INCREMENT
    ,PRIMARY KEY (fkFuncionario, idDependente) -- CHAVE PRIMÁRIA COMPOSTA
    ,nomeDependente VARCHAR(45)
	,tipo VARCHAR(45)
    ,dataNascimento DATE
);

-- Inserir dados dos funcionários
INSERT INTO Funcionario (nomeFuncionario,salario,sexo,fkSupervisor) VALUES
('João Nunes',30000,'m',null) -- João é o chefe, portanto não possui supervisor
,('Cláudio Silva',20000,'m',1000) -- Cláudio é supervisionado por João
,('Ana Teixeira',18000,'f',1000) -- Ana é supervisionada por João
,('Pedro Sousa',12000,'m',1001) -- Pedro é supervisionado por Cláudio
,('Maria Ferreira',1000,'f',1000); -- Maria é supervisionada por Ana

SELECT * FROM Funcionario;

-- Inserir dados da tabela Dependente
INSERT INTO Dependente (fkFuncionario,idDependente,nomeDependente,tipo,dataNascimento) VALUES
(1000,1,'Joana Nunes','cônjuge','1990-06-07')
,(1000,2,'Juan Nunes','filho','2010-03-06')
,(1001,1,'Cláudia Silva','cônjuge','1995-08-10')
,(1001,2,'Claudete Silva','filha','2012-09-05')
,(1002,1,'Anilson Teixeira','cônjuge','2000-11-09');

-- Exibir os dados da tabela Dependente
SELECT * FROM Dependente;
-- Exibir os dados dos funcionários e dos seus depedentes
SELECT * FROM Funcionario,Dependente
WHERE fkFuncionario = idFuncionario;

-- Exibir os dados do João e dos seus depedentes
SELECT * FROM Funcionario,Dependente
WHERE fkFuncionario = idFuncionario AND nomeFuncionario LIKE 'João Nunes';

-- Exibir os dados dos funcionários e dos seus supervisores
SELECT * FROM funcionario AS funcionario -- Dando um apelido para a tabela Funcionario
			 ,funcionario AS supervisor -- Dando outro espelhando e dando apelido para a tabela Funcionario
WHERE funcionario.fkSupervisor = supervisor.idFuncionario;

-- Exibir os dados dos funcionários, dos seus supervisores e dos dependentes dos funcionario
SELECT * FROM funcionario AS funcionario -- Dando um apelido para a tabela Funcionario
			 ,funcionario AS supervisor -- Dando outro espelhando e dando apelido para a tabela Funcionario
             ,dependente
WHERE funcionario.fkSupervisor = supervisor.idFuncionario
AND fkFuncionario = funcionario.idFuncionario;

-- Exibir os dados dos funcionários, dos seus supervisores e dos dependentes dos supervisores
SELECT * FROM funcionario AS funcionario -- Dando um apelido para a tabela Funcionario
			 ,funcionario AS supervisor -- Dando outro espelhando e dando apelido para a tabela Funcionario
             ,dependente
WHERE funcionario.fkSupervisor = supervisor.idFuncionario
AND fkFuncionario = supervisor.idFuncionario;
