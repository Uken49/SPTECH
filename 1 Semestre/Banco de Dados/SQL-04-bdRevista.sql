-- Segunda versão desse banco

CREATE DATABASE Revista;
USE Revista;

CREATE TABLE Revista(
	idRevista INT PRIMARY KEY AUTO_INCREMENT
    ,nome VARCHAR(40)
    ,categoria VARCHAR(30)
);

INSERT INTO Revista VALUES
(null,"Veja",null)
,(null,"Isto é",null)
,(null,"Epoca",null)
,(null,"Quatro Rodas",null);

UPDATE Revista
SET categoria = "Fofoca"
WHERE idRevista = 1 OR idRevista = 2;

UPDATE Revista
SET categoria = "Automobilistico"
WHERE idRevista = 4;

INSERT INTO Revista VALUES
(null,"O Olho","Informativo")
,(null,"Globo","Informativo")
,(null,"Revista Pan","Fofoca");

ALTER TABLE Revista MODIFY COLUMN categoria VARCHAR(40);

ALTER TABLE Revista RENAME COLUMN nome TO nomeRevista;

UPDATE Revista
SET periodicidade = "Semanal"
WHERE idRevista IN (1,2,4);

UPDATE Revista
SET periodicidade = "Diario"
WHERE idRevista IN (3,7,6);

UPDATE Revista
SET periodicidade = "Mensal"
WHERE idRevista = 5;

INSERT INTO Revista VALUES
(null,"Avon","Moda","Mensal");

ALTER TABLE Revista DROP COLUMN periodicidade;

CREATE TABLE Editora(
	idEditora INT PRIMARY KEY AUTO_INCREMENT
    ,nomeEditora VARCHAR(40)
    ,dataFund DATE
);

INSERT INTO Editora VALUES
(1000,"Maneiro","2021-05-21")
,(null,"PagodePlus","2020-06-03")
,(null,"Oreni","2019-12-13")
,(null,"CACINO","2022-03-21");

-- SCRIPT ABAIXO É DO EXERCICIO 04

-- 1. No exercício BD-03-Exercicio da Tabela Revista e da Tabela Editora:
-- • Acrescentar a coluna fkEditora na tabela Revista, com o tipo int e de forma que essa
-- coluna seja uma chave estrangeira que referencia a tabela Editora
ALTER TABLE Revista
	ADD COLUMN fkEditora INT
    ,ADD FOREIGN KEY (fkEditora) REFERENCES Editora (idEditora);
    
-- • Atualizar os dados da coluna fkEditora
UPDATE Revista
	SET fkEditora = 1000
		WHERE idRevista IN (1,2);
        
UPDATE Revista
	SET fkEditora = 1001
		WHERE idRevista IN (3,6); 

UPDATE Revista
	SET fkEditora = 1002
		WHERE idRevista IN (4,5); 

UPDATE Revista
	SET fkEditora = 1003
		WHERE idRevista IN (7,8); 

-- • Exibir os dados da tabela Revista
SELECT * FROM Revista;

-- • Exibir os dados das revistas e das editoras correspondentes
SELECT * FROM Revista, Editora
	WHERE fkEditora = idEditora;

-- • Exibir os dados das revistas e das editoras, porém apenas de uma editora.
SELECT * FROM Revista, Editora
	WHERE fkEditora = idEditora AND idEditora = 1000;