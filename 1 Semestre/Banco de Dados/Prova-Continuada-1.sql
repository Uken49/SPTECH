-- Crie um banco de dados chamado AC1. 
CREATE DATABASE AC1;
-- Selecione o banco de dados AC1.
USE AC1;

/* Questão 1 (1 ponto)
 Criar a tabela chamada Carro para conter os dados:
 idCarro, modelo (tamanho 50, por exemplo: 'Uno'), marca (tamanho 40, por exemplo: 'Fiat')
 ,placa (por exemplo: 'ABC 1234'), anoFab (ano de fabricação, por exemplo: 2020)
 ,sendo que idCarro tem um valor numérico inteiro e é a chave primária da tabela.
*/
CREATE TABLE Carro(
	idCarro INT PRIMARY KEY
    ,modelo VARCHAR(50)
    ,marca VARCHAR(40)
    ,placa CHAR(8)
    ,anoFab CHAR(4)
);
SELECT * FROM Carro;
	
/* Questão 2 (1 ponto)
Inserir pelo menos 5 carros, de forma que tenha mais de um carro de um mesma marca e mais
de um carro do mesmo ano de fabricação.
*/

INSERT INTO Carro VALUES
	(1,'Uno','Fiat','ABC 1234','2010')
	,(2,'Camaro','Chevrolet','DFG 5678','2010')
	,(3,'Grid','Fiat','HIJ 9012','2011')
	,(4,'Bulock','Wolksvagen','KLM 3456','2010')
	,(5,'Renavan','Chevrolet','NOP 7890','2011');

SELECT * FROM Carro;

/*Questão 3 (1 ponto)
O campo modelo (tamanho 50) está muito grande. É necessário diminuir para o tamanho 35.
Execute o comando para isso. Exiba a estrutura da tabela para conferir se foi alterado o tamanho.
Tire um print do resultado e cole no documento do Word.
*/
ALTER TABLE Carro MODIFY modelo VARCHAR(35) ;
DESC Carro;

-- Questão 4 (5 pontos)
-- Execute os comandos para: 
-- a) Exibir todos os dados da tabela. 
SELECT * FROM Carro;

-- b) Exibir apenas as marcas e os modelos dos carros, nessa ordem. 
SELECT marca, modelo FROM Carro;

-- c) Exibir apenas os dados dos carros de uma determinada marca.
SELECT * FROM Carro
WHERE marca = 'Fiat';

-- d) Exibir apenas os dados dos carros cujo ano de fabricação seja maior do que um determinado valor. 
SELECT * FROM Carro
WHERE anoFab > 2010;

-- e) Exibir os dados da tabela ordenados pelo modelo do carro.
SELECT * FROM Carro
ORDER BY modelo ASC;

-- f) Exibir os dados da tabela ordenados pelo ano de fabricação em ordem decrescente.
SELECT * FROM Carro
ORDER BY anoFab DESC;
 
-- g) Exibir os dados da tabela, dos carros cujo modelo comece com uma determinada letra.
SELECT * FROM Carro
WHERE modelo LIKE ('R%');

-- h) Exibir os dados da tabela, dos carros cuja placa termine com um determinado dígito numérico.
SELECT * FROM Carro
WHERE placa LIKE ('%8');

-- i) Exibir os dados da tabela, dos carros cuja placa tenha como segunda letra uma determinada letra.
SELECT * FROM Carro
WHERE placa LIKE ('_i%');

-- j) Exibir os dados da tabela, dos carros cuja marca tenha como penúltima letra uma determinada letra.
SELECT * FROM Carro
WHERE marca LIKE ('%e_');

-- k) Exibir os dados da tabela, dos carros cujo ID esteja dentro de um intervalo (por exemplo, de 2 a 4).
SELECT * FROM Carro
WHERE idCarro BETWEEN 2 AND 4;

-- l) Atualize a placa de algum carro, supondo que havia sido cadastrado errado. Exiba novamente os dados da tabela após a atualização.
UPDATE Carro
SET placa = 'BMW 9789'
WHERE idCarro = 1;

-- m) Exclua algum carro da tabela. Exiba novamente os dados da tabela após a exclusão.
DELETE FROM Carro
WHERE idCarro = 5;

/* Questão 5 (2 pontos)
Acrescente um campo na tabela Carro que seja da sua escolha que você julgue ser necessário para a regra de negócio.
E atualize os dados dos carros que já tinham sido inseridos antes deste campo ser criado, de forma que em pelo menos
um dos comandos de atualização, atualize os campos de mais de uma linha (por exemplo, de 2 linhas), num único comando.
Exiba novamente os dados da tabela.

No final, efetue o comando para excluir o banco de dados do MySQL Server (Schema).
*/

-- Adicionando a coluna 
ALTER TABLE Carro
ADD Cor Varchar(30);

-- Atualizando as cores de mais de um carro
UPDATE Carro
SET Cor = 'Preto'
WHERE idCarro BETWEEN 1 AND 3;

-- Atualizando a cor de um carro
UPDATE Carro
SET Cor = 'Rosa-Choque'
WHERE idCarro = 4;

-- Deletando o banco de dados (Schema)
DROP DATABASE AC1;