-- Terceira versão desse banco.

CREATE DATABASE Atleta;
USE Atleta;

CREATE TABLE Atleta(
	idAtleta INT PRIMARY KEY AUTO_INCREMENT
	,nome VARCHAR(40)
	,modalidade VARCHAR(40)
	,qtdMedalha INT
);

INSERT INTO Atleta (nome,modalidade,qtdMedalha) VALUES 
	('Helder Davidson','Boxe',7),
	('Usain Bolt','Corrida sem obstáculo',5),
	('Paulo André','Corrida sem obstáculo',3),
	('Jade Picon','Tiro ao Alvo',2),
	('Olivia Palito','Boxe',6),
	('Maria Siciliana','Boxe',1),
	('Akashi Cruz','Tiro ao Alvo',3);

UPDATE Atleta
SET nome = 'Uelder'
WHERE idAtleta = 1;

UPDATE Atleta
SET nome = 'Aokiji', qtdMedalha = '0'
WHERE idAtleta = 2;

DELETE FROM Atleta
WHERE idAtleta = 4;

-- SCRIPT ABAIXO É DO EXERCICIO 04

-- 2. Em BD-02-Exercicio, vocês fizeram um exercício em que criaram uma tabela Atleta.
-- Essa tabela deveria ter os campos: idAtleta (int e chave primária da tabela), nome (varchar,
-- tamanho 40), modalidade (varchar, tamanho 40), qtdMedalha (int, representando a
-- quantidade de medalhas que o atleta possui)

-- No mesmo banco de dados dessa tabela, crie a tabela Pais (Não precisa por acento no nome
-- da tabela). Essa tabela representa o país de origem do atleta e terá os campos: idPais (int,
-- chave primária), nome, capital.
CREATE TABLE Pais(
	idPais INT PRIMARY KEY AUTO_INCREMENT
    ,nomePais VARCHAR(40) 
    ,capital VARCHAR(40)
);

-- Insira dados na tabela Pais.
INSERT INTO Pais (nomePais,capital) VALUES
("Brasil","Brasilia")
,("Rússia","Moscou")
,("Jamaica","Kingston")
,("Tchecoslováquia","Praga");

-- Na tabela Atleta, adicione uma coluna chamada fkPais, e configure essa coluna para ser uma
-- chave estrangeira para a coluna idPais, da tabela Pais.
ALTER TABLE Atleta
	ADD COLUMN fkPais INT
	,ADD FOREIGN KEY (fkPais) REFERENCES Pais (idPais);
    
-- Coloque valores nessa coluna, de forma que cada atleta inserido na tabela Atleta tenha um
-- país de origem correspondente.
UPDATE Atleta
SET fkPais = '1'
WHERE idAtleta IN (1,3);

UPDATE Atleta
SET fkPais = '2'
WHERE idAtleta = 3;

UPDATE Atleta
SET fkPais = '3'
WHERE idAtleta IN (2,7);

UPDATE Atleta
SET fkPais = '4'
WHERE idAtleta IN (5,6);

-- Exiba os dados dos atletas e dos países correspondentes.
SELECT * FROM Atleta,Pais
WHERE fkPais = idPais;

-- Exiba os dados dos atletas e do país, mas somente de um determinado país (especifique o
-- nome do país na consulta).
SELECT * FROM Atleta,Pais
WHERE fkPais = idPais AND idPais = 4;
