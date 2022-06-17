-- a) Criar um banco de dados chamado PraticaFuncionario.
CREATE DATABASE PraticaFuncionario;
-- b) Selecionar esse banco de dados.
USE PraticaFuncionario;

-- c) Criar as tabelas correspondentes à sua modelagem.
CREATE TABLE setor(
	idSetor INT PRIMARY KEY AUTO_INCREMENT
	,nomeSetor VARCHAR(45)
    ,andar CHAR(2)
);

CREATE TABLE funcionario(
	idFuncionario INT PRIMARY KEY AUTO_INCREMENT
	,nomeFuncionario VARCHAR(45)
    ,telefone VARCHAR(14)
    ,salario DECIMAL(7,2) CHECK(salario >0)
    ,fkSetor INT, FOREIGN KEY (fkSetor) REFERENCES setor (idSetor)
    ,fkCoordenador INT, FOREIGN KEY (fkCoordenador) REFERENCES funcionario (idFuncionario)
);

CREATE TABLE acompanhante(
	idAcompanhante INT
	,fkFuncionario INT, FOREIGN KEY (fkFuncionario) REFERENCES funcionario (idFuncionario)
    ,nomeAcompanhante VARCHAR(45)
    ,tipoRelacao VARCHAR(45)
    ,dataNasc DATE
);

-- d) Inserir dados nas tabelas, de forma que exista mais de um funcionário em cada setor cadastrado.
INSERT INTO setor (nomeSetor, andar) VALUES
('RH','01')
,('Gestão de projetos','02')
,('Limpeza','03');

INSERT INTO funcionario (nomeFuncionario, telefone, salario, fkSetor, fkCoordenador) VALUES
('Robison Nunes', '13 9723-41230', 10002.51, 1, NULL)
,('Kleberiano Antagônico', '14 9223-11230', 3500.01, 2, 1)
,('Andorinha da Silva', '15 9723-31230', 5600.99, 1, 1)
,('Paulinho Bacana', '12 9723-16230', 5600.99, 3, 2);

INSERT INTO acompanhante (fkFuncionario, idAcompanhante, nomeAcompanhante, tipoRelacao, dataNasc) VALUES
(1, 1, 'Rubinho Nunes', 'Filho', '2002-03-20')
,(1, 2, 'Marihuana Nunes', 'Esposa', '1974-04-23')
,(2, 1, 'Carlito Antagônico', 'Filho', '2005-08-02')
,(3, 1, 'Julinha Bacana', 'Irmã', '1984-12-25');

-- e) Exibir todos os dados de cada tabela criada, separadamente.
SELECT * FROM setor;
SELECT * FROM funcionario;
SELECT * FROM acompanhante;

-- f) Fazer os acertos da chave estrangeira, caso não tenha feito no momento da criação.

-- g) Exibir os dados dos setores e dos seus respectivos funcionários.
SELECT * FROM setor,funcionario
	WHERE idSetor = fkSetor;
    
-- h) Exibir os dados de um determinado setor(informar o nome do setor na consulta) e dos seus respectivos funcionários.
SELECT * FROM setor,funcionario
	WHERE idSetor = fkSetor AND nomeSetor = 'RH';
    
-- i) Exibir os dados dos funcionários e de seus acompanhantes.
SELECT * FROM funcionario,acompanhante
	WHERE idFuncionario = idFuncionario;
    
-- j) Exibir os dados de apenas um funcionário (informar o nome do funcionário) e os dados de seus acompanhantes.
SELECT * FROM funcionario,acompanhante
	WHERE idFuncionario = fkFuncionario AND nomeFuncionario LIKE ('Robison%');
    
-- k) Exibir os dados dos funcionários, dos setores em que trabalham e dos seus acompanhantes.
SELECT * FROM setor,funcionario,acompanhante
	WHERE idFuncionario = fkFuncionario AND idSetor = fkSetor;
    
-- l) Exibir os dados dos funcionários e dos seus coordenadores.
SELECT * FROM funcionario AS f, funcionario AS c
	WHERE f.fkCoordenador = c.idFuncionario;
    
-- m) Exibir os dados dos funcionários e dos seus coordenadores, mas somente de um coordenador.
SELECT * FROM funcionario AS f, funcionario AS c
	WHERE f.fkCoordenador = c.idFuncionario AND f.fkCoordenador = 1;
    
-- n) Exibir os dados dos setores, dos funcionários e dos seus coordenadores.
SELECT * FROM setor AS s, funcionario AS f, funcionario AS c
	WHERE f.fkCoordenador = c.idFuncionario AND f.fkSetor = s.idSetor;
    
-- o) Exibir os dados dos funcionários, dos seus coordenadores e dos acompanhantes dos funcionários.
SELECT * FROM funcionario AS f, funcionario AS c, acompanhante AS a
	WHERE f.fkCoordenador = c.idFuncionario AND f.idFuncionario = a.idAcompanhante;
    
-- p) Exibir os dados dos funcionários, dos seus coordenadores e dos acompanhantes dos coordenadores.
SELECT * FROM funcionario AS f, funcionario AS c, acompanhante AS a
	WHERE f.fkCoordenador = c.idFuncionario AND f.fkCoordenador = a.idAcompanhante;
    