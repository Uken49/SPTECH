CREATE DATABASE Dono;
USE Dono;

-- Criar as tabelas equivalentes à modelagem. 
CREATE TABLE Dono(
	idDono INT PRIMARY KEY AUTO_INCREMENT
    ,nomeDono VARCHAR(60)
    ,dataNasc DATE
    ,salario FLOAT
)AUTO_INCREMENT = 1;

CREATE TABLE Carro(
	idCarro INT PRIMARY KEY AUTO_INCREMENT
    ,modelo VARCHAR(45)
    ,marca VARCHAR(45)
    ,placa CHAR(8)
    ,anoFabricacao CHAR(4)
    ,fkDono INT, FOREIGN KEY (fkDono) REFERENCES Dono (idDono)
);

-- Inserir dados nas tabelas, de forma que exista algum dono com mais de um carro cadastrado
INSERT INTO Dono (nomeDono, dataNasc, salario) VALUES
('Carlos','2003-01-15',2100.50)
,('Emanuel','1986-12-30',3510.10)
,('Manuela','1997-06-03',3110.00)
,('Astolfo','2000-01-30',2900.00)
,('Melissa','2002-04-05',2500.79);

INSERT INTO Carro (modelo, marca, placa, anoFabricacao,fkDono) VALUES
('Fiesta','Ford','ABC 1234','2020',2)
,('Saveiro','Volkswagen','DEF 5678','1999',2)
,('Sandero','Renault','GHI 9012','2018',1)
,('HB20','Hyundai','JKL 3456','2015',3)
,('Honda Fiat','Honda','MNO 7890','2018',4);

-- Exibir todos os dados de cada tabela criada, separadamente.
SELECT * FROM Dono;
SELECT * FROM Carro;

-- Exibir os dados dos donos ordenados pela data de nascimento.
SELECT * FROM Dono
ORDER BY dataNasc ASC;

-- Exibir os dados dos carros ordenados pelo ano de fabricação, em ordem decrescente.
SELECT * FROM Carro
ORDER BY anoFabricacao DESC;

-- Exibir os dados dos carros cuja placa termine com um determinado dígito numérico.
SELECT * FROM Carro
WHERE placa LIKE ('%8');

-- Exibir os carros que são de uma determinada marca.
SELECT * FROM Carro
WHERE marca LIKE ('Honda');

-- Exibir a descrição da tabela carro.
DESC Carro;

-- Aumentar a coluna modelo da tabela carro.
ALTER TABLE Carro MODIFY COLUMN modelo VARCHAR(50);

-- Exibir novamente a descrição da tabela carro para ver se alterou.
DESC Carro;

-- Alterar o salário de algum dono. Exibir novamente a tabela de dono.
UPDATE Dono
SET salario = 4000.40
WHERE idDono = 1;

SELECT * FROM Dono;

-- Exibir os dados dos carros e dos seus respectivos donos.
SELECT * FROM Carro,Dono
WHERE idDono = fkDono;

-- Exibir os dados dos carros e dos seus respectivos donos, mas somente de um determinado dono (informando o nome do dono).
SELECT * FROM Carro,Dono
WHERE idDono = fkDono AND nomeDono = 'Emanuel';

-- Exibir os dados dos carros e dos seus respectivos donos, mas somente de uma determinada marca de carro.
SELECT * FROM Carro,Dono
WHERE idDono = fkDono AND marca = 'Hyundai';

-- Exibir os dados dos carros e dos seus respectivos dono, mas somente dos carros cuja placa comece uma determinada letra.
SELECT * FROM Carro,Dono
WHERE idDono = fkDono AND placa LIKE 'd%';

-- Excluir as tabelas.
DROP TABLE Carro;
DROP TABLE Dono;
