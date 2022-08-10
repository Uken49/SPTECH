/* Criando primeiro Banco de Dados.
   No MySQL Workbench, crie um banco de dados (schema) chamado Atleta.
*/
CREATE DATABASE bdAtleta;
USE Atleta;

/*
Criar a tabela chamada Atleta para conter os dados: idAtleta (int e chave primária databela),nome (varchar, tamanho 40),
modalidade (varchar, tamanho 40), qtdMedalha (int,representando a quantidade de medalhas que o atleta possui)
*/
CREATE TABLE Atleta(
	idAtleta INT PRIMARY KEY
	,nome VARCHAR(40)
	,modalidade VARCHAR(40)
	,qtdMedalha INT
);

INSERT INTO Atleta VALUES
	(1,'Helder Davidson','Boxe',7),
	(2,'Usain Bolt','Corrida sem obstáculo',5),
	(3,'Paulo André','Corrida sem obstáculo',3),
	(4,'Jade Picon','Tiro ao Alvo',2),
	(5,'Olivia Palito','Boxe',6),
	(6,'Maria Siciliana','Boxe',1),
	(7,'Akashi Cruz','Tiro ao Alvo',3);

-- Exibir todos os dados da tabela.
SELECT * FROM Atleta;

-- Exibir apenas os nomes e quantidade de medalhas dos atletas.
SELECT nome,qtdMedalha FROM Atleta;

-- Exibir apenas as modalidades e os nomes dos atletas, nessa ordem.
SELECT modalidade,nome FROM Atleta;

-- Exibir os dados dos atletas de uma determinada modalidade.
SELECT * FROM Atleta
WHERE modalidade = 'Corrida sem obstáculo';

-- Exibir os dados dos atletas que tenham 3 medalhas ou mais.
SELECT * FROM Atleta
WHERE qtdMedalha > 2;

-- Exibir os dados dos atletas cujo idAtleta seja menor do que um determinado valor.
SELECT * FROM Atleta
WHERE idAtleta < 5;

-- Exibir apenas os nomes dos atletas de uma determinada modalidade.
SELECT nome FROM Atleta
WHERE modalidade = 'boxe';

-- Exibir os dados dos atletas cujo idAtleta esteja entre um valor e outro (por exemplo, entre 3 e 7).
SELECT * FROM Atleta
WHERE idAtleta > 2 && idAtleta <= 6;