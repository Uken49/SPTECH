CREATE DATABASE petshop;
USE petshop;

-- Criar as tabelas equivalentes à modelagem.
CREATE TABLE Cliente(
	idCliente INT PRIMARY KEY AUTO_INCREMENT
    ,nomeCliente VARCHAR(60)
    ,telefone CHAR(10)
    ,numCelular CHAR(12)
    ,cep CHAR(9)
    ,logradouro VARCHAR(50)
    ,cidade VARCHAR(50)
    ,uf CHAR(2)
    ,bairro VARCHAR(40)
) AUTO_INCREMENT = 1;

CREATE TABLE Pet(
	idPet INT PRIMARY KEY AUTO_INCREMENT
    ,tipoAnimal VARCHAR (25)
    ,nomePet VARCHAR(45)
    ,racaPet VARCHAR(25)
    ,pesoPet DECIMAL(4,2) CHECK (pesoPet > 0)
    ,fkCliente INT, FOREIGN KEY (fkCliente) REFERENCES Cliente (idCliente)
) AUTO_INCREMENT = 101;

-- Inserir dados nas tabelas, de forma que exista mais de um tipo de animal diferente, e que
	-- exista algum cliente com mais de um pet cadastrado.
    
INSERT INTO Cliente (nomeCliente, telefone, numCelular, cep, logradouro, cidade, uf, bairro) VALUES
('Carlos Freitas','2554-9624','1196581-1774','08401-410','Antônio Macedo','Brasilia','DF','Pernocas')
,('Emanuel Xarope','2554-1230','1193518-1244','07951-605','Almirante Teodoro','Caruaru','PE','Brasilico')
,('Manuela Alcantra','2554-5603','1191695-1965','85349-132','Tiradentes','Paraíba','PB','Itapipoca')
,('Astolfo Silva','2553-8130','1191988-1065','07947-605','Seringais','São Paulo','SP','Guaianases')
,('Melissa Silva','2559-0495','1195169-1518','89765-132','Glutoma','Guarulhos','SP','Gaza');

INSERT INTO Pet (tipoAnimal, nomePet, racaPet, pesoPet,fkCliente) VALUES
('Cachorro','Xernos','Vira-lata',43.23,1)
,('Gato','Babidi','Persa',26.53,2)
,('Hamster','Chin Chin','Vira-lata',07.48,3)
,('Cachorro','Bernado','Lhasa Apsu',56.74,4)
,('Gato','Zelda','Sphynx',18.47,5)
,('Gato','Morceguinho','Maine-Coon',16.8,3);
    
-- Exibir todos os dados de cada tabela criada, separadamente.
SELECT * FROM Cliente;
SELECT * FROM Pet;

-- Altere o tamanho da coluna nome do cliente.
ALTER TABLE Cliente
	MODIFY COLUMN nomeCliente VARCHAR(60);

-- Exibir os dados de todos os pets que são de um determinado tipo (por exemplo: cachorro).
SELECT * FROM Pet
	WHERE tipoAnimal LIKE ('Gato');

-- Exibir apenas os nomes e os pesos dos pets.
SELECT nomePet,pesoPet FROM Pet;

-- Exibir os dados dos pets ordenados em ordem crescente pelo nome.
SELECT * FROM Pet
	ORDER BY nomePet asc;

-- Exibir os dados dos clientes ordenados em ordem decrescente pelo bairro.
SELECT * FROM Cliente
	ORDER BY bairro desc;

-- Exibir os dados dos pets cujo nome comece com uma determinada letra.
SELECT * FROM Pet
	WHERE nomePet LIKE ('b%');
    
-- Exibir os dados dos clientes que tenham um determinado sobrenome.
SELECT * FROM Cliente
	WHERE nomeCliente LIKE ('%Silva%');
    
-- Alterar o telefone de um determinado cliente.
UPDATE Cliente
SET telefone = '2521-5364'
WHERE idCliente = 3;

-- Exibir os dados dos clientes para verificar se alterou.
SELECT * FROM Cliente;

-- Exibir os dados dos pets e dos seus respectivos donos.
SELECT * FROM Pet,Cliente
	WHERE idCliente = fkCliente;

-- Exibir os dados dos pets e dos seus respectivos donos, mas somente de um determinado
	-- cliente (informar o nome do cliente na consulta).
SELECT * FROM Pet,Cliente
	WHERE idCliente = fkCliente AND nomeCliente LIKE ('Manuela Alcantra');

--  Exibir os dados dos pets e dos seus respectivos donos, mas somente de um determinado
	-- cliente (informar um dos telefones do cliente na consulta).
SELECT * FROM Pet,Cliente
	WHERE idCliente = fkCliente AND telefone LIKE ('2553-8130');
    
-- Excluir algum pet.
DELETE FROM Pet
	WHERE idPet = 104;

-- Exibir os dados dos pets para verificar se excluiu.
SELECT * FROM Pet;

-- Excluir as tabelas.
DROP TABLE Pet;
DROP TABLE Cliente;
