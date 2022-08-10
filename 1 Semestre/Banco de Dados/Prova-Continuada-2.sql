-- Regras de negócio desse projeto:
-- Tema livre e não pode ser igual a exemplos e exercícios realizados;
-- É necessário ter pelo menos 3 tabelas;
-- Relacionamento entre as tabelas deve ser 1 para muitos;
-- 2 tabelas devem corresponder a entidades fortes e 1 tabela deve corresponder a entidade fraca.
-- É necessário ter 1 atributo composto e 1 atributo multivalorado pelo menos em uma das tabelas;
-- É necessário utilizar a restrição CHECK pelo menos em uma das tabelas;
-- Pelo menos um campo deve ser para armazenar números com casas decimais e pelo menos um campo deve ser para armazenar data.
-- Cada tabela deve ter pelo menos 3 campos;
-- As tabelas, os campos e o relacionamento entre as tabelas devem ter coerência com o contexto imaginado.
-- ---------------------------------------------------------------------------
-- PARTE 1: MODELAGEM LÓGICA

-- ---------------------------------------------------------------------------
-- PARTE 2: COMANDOS - toda vez que fizer um select, tire um print

-- 1- Criar e selecionar o banco de dados ac2
CREATE DATABASE ac2;
USE ac2;

-- 2- Criar as tabelas conforme a modelagem criada. Elas devem ser auto incrementadas e cada tabela deve ter uma numeração inicial diferente.
CREATE TABLE Quarto(
	idQuarto INT PRIMARY KEY AUTO_INCREMENT
    ,numQuarto CHAR (3)
    ,bloco CHAR(1) CHECK (bloco = 'a' OR bloco = 'b' OR bloco = 'c')
)AUTO_INCREMENT = 100;

CREATE TABLE Hospede(
	idHospede INT PRIMARY KEY AUTO_INCREMENT
    ,nomeHospede VARCHAR (50)
    ,cpf CHAR(11)
    ,rg VARCHAR(15)
    ,dataEntrada DATE
    ,dataSaida DATE
    ,fkQuarto INT, FOREIGN KEY(fkQuarto) REFERENCES Quarto (idQuarto)
);

CREATE TABLE Comanda(
	fkHospede INT
    ,idComanda INT
    ,valor DECIMAL(6,2)
    ,dataComanda DATE
    ,FOREIGN KEY(fkHospede) REFERENCES Hospede (idHospede)
    ,PRIMARY KEY (fkHospede,idComanda)
);

-- 3- Inserir pelo menos 5 registros em cada tabela.
INSERT INTO Quarto (numQuarto,bloco) VALUES
('001','a')
,('002','b')
,('003','c')
,('004','a')
,('005','b')
,('006','c');

INSERT INTO Hospede (nomeHospede,cpf,rg,dataEntrada,dataSaida,fkQuarto) VALUES
('Churusbim Churusbango','52969808145','4912804209x','2022-04-21','2022-04-29',100)
,('Mikael Jaquison','96980814543','127480272','2022-03-12','2022-03-15',101)
,('Nilmar Neto','98081454393','31280420921','2022-01-30','2022-02-05',102)
,('Chico Vento','08145439367','8042092112','2022-05-19','2022-05-30',103)
,('Ana Paula','14543936763','4209211290','2022-04-22','2022-04-24',104);

INSERT INTO Comanda (fkHospede,idComanda,valor,dataComanda) VALUES
(1,1,200,'2022-04-21')
,(1,2,151.99,'2022-04-23')
,(2,1,213,'2022-04-25')
,(3,1,1200.90,'2022-01-31')
,(3,2,399.89,'2022-02-03');

-- 4- Alterar o tamanho da coluna de alguma tabela e realizar o comando 
-- que comprove que o tamanho foi alterado (tirar print desse resultado).
DESC Hospede;
ALTER TABLE Hospede MODIFY COLUMN  nomeHospede VARCHAR(63);
DESC Hospede;

-- 5- Exibir os dados das tabelas criadas separadamente.
SELECT * FROM Quarto;
SELECT * FROM Hospede;
SELECT * FROM Comanda;

-- 6- Exibir os dados de uma tabela com alguma condição.
SELECT * FROM Comanda
	WHERE valor >= 201;
    
-- 7- Exibir os dados de uma tabela ordenados por alguma coluna.
SELECT * FROM Hospede
	ORDER BY dataEntrada;
    
-- 8- Exibir os dados de uma tabela com a condição de que o valor de uma coluna contenha uma determinada letra ou número.
SELECT * FROM Quarto
	WHERE bloco LIKE 'b';
    
-- 9- Exibir os dados de uma tabela, de forma que não apareça todas as colunas dessa tabela.
SELECT nomeHospede,dataEntrada FROM Hospede;

-- 10- Atualize o valor de um campo de alguma tabela. Exiba novamente os dados da tabela após a atualização.
UPDATE Hospede
SET dataEntrada = '2022-04-22'
	WHERE idHospede = 1;

-- 11- Exibir os dados de 2 tabelas, de forma correspondente.
SELECT * FROM Hospede,Quarto
	WHERE idQuarto = fkQuarto;

-- 12- Exibir os dados dessas 2 tabelas, de forma correspondente, mas com uma condição.
SELECT * FROM Hospede,Quarto
	WHERE idQuarto = fkQuarto AND bloco LIKE 'b';

-- 13- Exibir os dados das outras 2 tabelas, de forma correspondente.
SELECT * FROM Comanda,Hospede
	WHERE idHospede = fkHospede;

-- 14- Exibir os dados das outras 2 tabelas, de forma correspondente, mas com uma condição.
SELECT * FROM Comanda,Hospede
	WHERE idHospede = fkHospede AND dataComanda LIKE ('%-04-%');

-- 15- Exibir os dados das 3 tabelas, de forma correspondente.
SELECT * FROM Quarto,Comanda,Hospede
	WHERE idHospede = fkHospede AND idQuarto = fkQuarto;
    
-- 16- Exibir os dados das 3 tabelas, de forma correspondente, mas com uma condição.
SELECT * FROM Quarto,Comanda,Hospede
	WHERE idHospede = fkHospede AND idQuarto = fkQuarto AND cpf='52969808145';
    
-- 17- Exclua algum registro de alguma tabela. Exiba novamente os dados da tabela após a exclusão.
SELECT * FROM Quarto;

DELETE FROM Quarto
	WHERE idQuarto = 105; -- :)
    
SELECT * FROM Quarto; 