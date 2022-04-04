-- Segunda versão desse banco.
-- No MySQL Workbench, crie um banco de dados (schema) chamado Atleta.

-- Aluno: Helder Davidson Rodrigues Alvarenga    RA: 03221027
CREATE DATABASE Atleta;
USE Atleta;

/*
Criar a tabela chamada Atleta para conter os dados: idAtleta (int e chave primária databela),nome (varchar, tamanho 40),
modalidade (varchar, tamanho 40), qtdMedalha (int,representando a quantidade de medalhas que o atleta possui)
*/
CREATE TABLE Atleta(
	idAtleta INT PRIMARY KEY AUTO_INCREMENT
	,nome VARCHAR(40)
	,modalidade VARCHAR(40)
	,qtdMedalha INT
);

 -- Inserir dados na tabela, procurando colocar mais de um atleta para cada modalidade  
INSERT INTO Atleta (nome,modalidade,qtdMedalha) VALUES 
	('Helder Davidson','Boxe',7),
	('Usain Bolt','Corrida sem obstáculo',5),
	('Paulo André','Corrida sem obstáculo',3),
	('Jade Picon','Tiro ao Alvo',2),
	('Olivia Palito','Boxe',6),
	('Maria Siciliana','Boxe',1),
	('Akashi Cruz','Tiro ao Alvo',3);

-- Exibir os dados de todos os atletas cujo idAtleta seja diferente de um determinado valor.
SELECT * FROM Atleta
WHERE idAtleta <> 5;

-- Exibir os dados da tabela ordenados pela modalidade.
SELECT * FROM Atleta
ORDER BY modalidade asc;

-- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente.
SELECT * FROM Atleta
ORDER BY qtdMedalha desc;

-- Exibir os dados da tabela, dos atletas cujo nome contenha uma determinada letra.
SELECT * FROM Atleta
WHERE nome LIKE ('%e%');

-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.
SELECT * FROM Atleta
WHERE nome LIKE ('j%');

-- Exibir os dados da tabela, dos atletas cujo nome termine com uma determinada letra.
SELECT * FROM Atleta
WHERE nome LIKE ('%n');

-- Exibir os dados da tabela, dos atletas cujo nome tenha uma determinada letra como penúltima letra.
SELECT * FROM Atleta
WHERE nome LIKE ('u%_');

-- Altere a quantidade de medalhas de um atleta.
UPDATE Atleta
SET nome = 'Uelder'
WHERE idAtleta = 1;

-- Altere o nome e a quantidade de medalhas de um atleta.
UPDATE Atleta
SET nome = 'Aokiji', qtdMedalha = '0'
WHERE idAtleta = 2;

-- Exclua um atleta.
DELETE FROM Atleta
WHERE idAtleta = 4;

-- Eliminar a tabela.
DROP TABLE Atleta;
