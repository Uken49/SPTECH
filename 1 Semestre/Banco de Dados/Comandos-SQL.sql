/* Inicio - Comandos DDL

-- Criando um BD (Banco de Dados)
CREATE DATABASE ComandosExemplos;

-- Usando o BD (todos os comandos serão feitos nele)
USE ComandosExemplos;

-- Excluindo o banco de dados
DROP DATABASE ComandosExemplos;

 Fim - Comandos DDL*/
 
/* Inicio - Comandos TABLE
-- Criando uma tabela com atributos
CREATE TABLE Tabela1(
	id INT PRIMARY KEY,
    descricao VARCHAR(70)
);

CREATE TABLE Tabela2(
	id INT PRIMARY KEY AUTO_INCREMENT,
    valor INT,
    descricao VARCHAR(70)
);

-- Limpa a tabela, sem exluir ela
TRUNCATE Tabela1;

-- Excluindo uma tabela
DROP TABLE Tabela1;

 Fim - Comandos TABLE*/

/* Inicio - Comandos DML
-- Insere um valor em todos os atributos da tabela
INSERT INTO Tabela1 VALUES
(1, "Inserindo um id e um texto com um insert.");

-- Insere um valor nos atributos escolhidos (entre parênteses) de uma tabela
INSERT INTO Tabela2 (descricao) VALUES
("Inserindo um id e um texto com o insert, mas definindo os campos");

-- Exibe todos os campos da tabela escolhida
SELECT * FROM Tabela1;

-- Exibe os dados dos determinados campo(s) da tabela escolhida
SELECT id FROM Tabela1;

-- Deleta a linha que cumpra a condição (where)
DELETE FROM Tabela1
WHERE id = 1;

-- Atualiza o resgistro de uma tabela que cumpra a condição (where)
UPDATE Tabela1
SET id = 1
WHERE id = 2;

-- Atualiza mais de um registro de uma tabela que cumpra a condição (where)
UPDATE Tabela1
SET descricao = 'Atualizando a descrição dessa tabela'
WHERE id = 2;

 Fim - Comandos */
 
/* Inicio - Comandos SLA
-- Exibe a estrutura da tabela
DESC Tabela1;

-- Alterando a propriedade de uma coluna
ALTER TABLE Tabela1
MODIFY COLUMN descricao VARCHAR(90);

-- Adicionando uma coluna para a tabela
ALTER TABLE Tabela1 ADD valor INT;

-- Excluindo uma coluna da tabela
ALTER TABLE Tabela1 DROP valor;

-- Renomeando o nome de uma coluna
ALTER TABLE Tabela1 RENAME COLUMN id TO idTabela;

 Fim - Comandos */

