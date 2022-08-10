-- No MySQL Workbench, crie um banco de dados (schema) chamado Revista.
CREATE DATABASE Revista;
-- Selecione esse banco de dados.
USE Revista;

-- Escreva e execute os comandos para:
--  Criar a tabela chamada Revista para conter os campos: idRevista (int e chave primária da tabela),
--  nome (varchar, tamanho 40), categoria (varchar, tamanho 30). Os valores de idRevista devem iniciar 
-- com o valor 1 e ser incrementado automaticamente pelo sistema.
CREATE TABLE Revista(
	idRevista INT PRIMARY KEY AUTO_INCREMENT
    ,nome VARCHAR(40)
    ,categoria VARCHAR(30)
);

-- • Inserir 4 registros na tabela, mas sem informar a categoria.
INSERT INTO Revista VALUES
(null,"Veja",null)
,(null,"Isto é",null)
,(null,"Epoca",null)
,(null,"Quatro Rodas",null);

-- Escreva e execute os comandos para:
-- • Exibir todos os dados da tabela.
SELECT * FROM Revista;
-- • Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela novamente para verificar se atualizou corretamente.
UPDATE Revista
SET categoria = "Fofoca"
WHERE idRevista = 1 OR idRevista = 2;

UPDATE Revista
SET categoria = "Automobilistico"
WHERE idRevista = 4;

SELECT * FROM Revista;

-- • Insira mais 3 registros completos.
INSERT INTO Revista VALUES
(null,"O Olho","Informativo")
,(null,"Globo","Informativo")
,(null,"Revista Pan","Fofoca");

-- • Exibir novamente os dados da tabela.
SELECT * FROM Revista;

-- • Exibir a descrição da estrutura da tabela.
DESC TABLE Revista;

-- • Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.
ALTER TABLE Revista MODIFY COLUMN categoria VARCHAR(40);

-- • Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria.
DESC TABLE Revista;

-- • Renomeie a coluna nome para nomeRevista.
ALTER TABLE Revista RENAME COLUMN nome TO nomeRevista;

-- • Exibir novamente os dados da tabela, para verificar se alterou o nome da coluna.
SELECT * FROM Revista;

-- • Acrescentar a coluna periodicidade à tabela, que é varchar(15). Periodicidade é a informação se a revista é semanal, mensal, quinzenal, etc.
ALTER TABLE Revista ADD COLUMN periodicidade VARCHAR(15);

-- • Exibir os dados da tabela.
SELECT * FROM Revista;

-- • Atualize a tabela, preenchendo os valores da coluna periodicidade. Exiba novamente os dados da tabela.
UPDATE Revista
SET periodicidade = "Semanal"
WHERE idRevista IN (1,2,4);

UPDATE Revista
SET periodicidade = "Diario"
WHERE idRevista IN (3,7,6);

UPDATE Revista
SET periodicidade = "Mensal"
WHERE idRevista = 5;

SELECT * FROM Revista;

-- • Insira os dados de uma nova revista, com todos os seus dados. Exiba novamente os dados da tabela.
INSERT INTO Revista VALUES
(null,"Avon","Moda","Mensal");

SELECT * FROM Revista;

-- • Excluir a coluna periodicidade da tabela. Exibir novamente os dados da tabela.
ALTER TABLE Revista DROP COLUMN periodicidade;

SELECT * FROM Revista;

-- • Criar a tabela Editora, nesse mesmo banco de dados, com os campos: idEditora (int e chave primária), 
-- nomeEditora (varchar, tamanho 40), dataFund (tipo date – representa a data da fundação da editora – podem inventar). 
-- idEditora terá o valor inicial 1000 e será incrementado automaticamente pelo sistema)
CREATE TABLE Editora(
	idEditora INT PRIMARY KEY AUTO_INCREMENT
    ,nomeEditora VARCHAR(40)
    ,dataFund DATE
);

-- • Inserir dados na tabela Editora
INSERT INTO Editora VALUES
(1000,"Maneiro","2021-05-21")
,(null,"PagodePlus","2020-06-03")
,(null,"Oreni","2019-12-13")
,(null,"CACINO","2022-03-21");

SELECT * FROM Editora;