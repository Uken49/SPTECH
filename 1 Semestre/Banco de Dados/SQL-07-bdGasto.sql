CREATE DATABASE Gasto;
USE Gasto;
-- Crie uma entidade Pessoa, com atributos idPessoa, nome, data de nascimento, profissão,
	-- idioma (que a pessoa fala / entende).
-- Crie uma outra entidade Gasto, com atributos idGasto, data, valor, descrição. O valor deve
	-- ser maior do que zero
CREATE TABLE Idioma(
	idIdioma INT PRIMARY KEY AUTO_INCREMENT
    ,nomeIdioma VARCHAR(45)
)AUTO_INCREMENT = 100;

CREATE TABLE Pessoa(
	idPessoa INT PRIMARY KEY AUTO_INCREMENT
    ,nome VARCHAR(50)
    ,profissao VARCHAR(45)
    ,fkIdioma INT, FOREIGN KEY (fkIdioma) REFERENCES Idioma (idIdioma)
)AUTO_INCREMENT = 2000;

CREATE TABLE Gasto(
	idGasto INT PRIMARY KEY AUTO_INCREMENT
    ,dataGasto DATE
    ,descricao VARCHAR(60)
    ,valor DECIMAL(6,2) CHECK(valor>0)
    ,fkPessoa INT, FOREIGN KEY (fkPessoa) REFERENCES Pessoa (idPessoa)
)AUTO_INCREMENT = 3000;

-- Insira dados nas tabelas.
INSERT INTO Idioma (nomeIdioma) VALUES
('Inglês')
,('Espanhol')
,('Português');

INSERT INTO Pessoa (nome, profissao, fkIdioma) VALUES
('Matheus Huwang','Bombeiro',100)
,('Charles Emanuel','Motorista de aplicativo',102)
,('Rodolfo Pires','Programador',100)
,('Guilherme Briggs','Bombeiro',101)
,('Guilhermina Picon','Motorista de ônibus',100);

INSERT INTO Gasto (dataGasto, descricao,valor, fkPessoa) VALUES
('2022-03-25','Cano PVC',200.50,2000)
,('2022-04-01','Moto G Plus',2570.60,2003)
,('2020-12-05','Mouse Longitec',270,2000)
,('2007-08-19','Lampada fluorescente',60.99,2001)
,('2021-01-06','Fone de ouvido bluetooth',199.98,2004);

-- Exiba os dados de cada tabela individualmente.
SELECT * FROM Idioma;
SELECT * FROM Pessoa;
SELECT * FROM Gasto;

-- Exiba os dados da tabela Pessoa, mas filtrando por algum dado da tabela (por
	-- exemplo, as pessoas de alguma profissão, etc).
SELECT * FROM Pessoa
	WHERE profissao LIKE ('motorista%');
    
-- Exiba os dados da tabela Gasto, de forma que os gastos mais recentes apareçam
	-- primeiro.
SELECT * FROM Gasto
	ORDER BY dataGasto DESC;
    
-- Exiba os dados das pessoas e dos seus gastos correspondentes.
SELECT * FROM Pessoa,Gasto,Idioma
	WHERE idPessoa = fkPessoa AND idIdioma = fkIdioma;
    
-- Exiba os dados de uma determinada pessoa e dos seus gastos correspondentes.
SELECT * FROM Pessoa,Gasto,Idioma
	WHERE idPessoa = fkPessoa AND idIdioma = fkIdioma AND nome LIKE 'Guilherme Briggs';
    
-- Exiba os dados das pessoas e dos seus gastos correspondentes, mas somente de
	-- uma determinada data.
SELECT * FROM Pessoa,Gasto,Idioma
	WHERE idPessoa = fkPessoa AND idIdioma = fkIdioma AND dataGasto LIKE '2022%';
    
-- Atualize valores já inseridos na tabela.
UPDATE Idioma
SET nomeIdioma = 'Coreano'
WHERE idIdioma = '102';

SELECT * FROM Idioma;

-- Exclua um ou mais registros de alguma tabela
DELETE FROM Gasto
	WHERE idGasto = 3000 OR idGasto = 3002;
    
DELETE FROM Pessoa
	WHERE idPessoa = 2000;

