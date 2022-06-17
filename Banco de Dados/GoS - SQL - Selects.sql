# Enredo: Guerras Secretas - Age of Select
# Um ser misterioso e onipotente, conhecido como Beyonder, reuiniu
# diverosos seres poderosos de vários universos distintos para o seu
# torneio denominado "Guerras Secretas", apenas para que lutassem
# e fosse definido o mais poderoso do multiverso.
# ------------------------------------------------------

# Regras
# 1- Cada confronto tem apenas 2 personagens envolvidos
# 2- Cada personagem terá 2 lutas
# 3- O vencedor da batalha tem o id do campeão da luta
# 4- O Batman está com preparo
# ------------------------------------------------------

# Ao fim do torneio, apenas 3 heróis poderá retornar
# para sua realidade, quem será os vencedores dessa insanidade? Select your fighter!!

CREATE DATABASE GuerrasSecretas;
USE GuerrasSecretas;

CREATE TABLE PODER (
	idPoder INT PRIMARY KEY AUTO_INCREMENT,
	Ataque INT,
	Nome VARCHAR (45)
);

INSERT INTO Poder (Ataque, Nome) VALUES
(3000, 'Super Força')
,(4000, 'Super Velocidade')
,(9500, 'Super Inteligência')
,(1900, 'Arte Marcial')
,(1100, 'Metamorfose')
,(7500, 'Regeneração')
,(3300, 'Elasticidade');

CREATE TABLE Indole (
	idIndole INT PRIMARY KEY AUTO_INCREMENT,
	Descricao VARCHAR (10)
);

INSERT INTO Indole (Descricao) VALUES
('Herói')
,('Vilão')
,('Ant-Herói');

CREATE TABLE PERSONAGEM (
	idPersonagem INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR (45),
	Defesa INT,
	fkPoder INT, FOREIGN KEY (fkPoder) REFERENCES Poder(idPoder),
	fkIndole INT, FOREIGN KEY (fkIndole) REFERENCES Indole(idIndole)
);

INSERT INTO Personagem (Nome, Defesa, fkPoder,fkIndole ) VALUES
('Eren Yeager',1200,5,2)
,('Homem Aranha',4999,1,1)
,('Batman',1000,NULL,1)
,('Matuê',20,NULL,2)
,('Goku',8000,1,1)
,('Hulk',10000,4,1)
,('Deadpool',5500,4,3)
,('Dr Destino',1700,3,2)
,('Sr Fantástico',1700,7,1)
,('Monkey D Luffy',6000,7,3)
,('Wolverine',7500,4,1);

CREATE TABLE Arma (
	idArma INT AUTO_INCREMENT PRIMARY KEY,
	Nome VARCHAR (45),
    Ataque INT,
	fkPersonagem INT, FOREIGN KEY (fkPersonagem) REFERENCES PERSONAGEM(idPersonagem)
);

INSERT INTO Arma (Nome, Ataque, fkPersonagem) VALUES
('Sangue Real',2000,1)
,('Lança Teia',3500,2)
,('Cinto de Utilidade',999999,3)
,('Microfone',10,4)
,('Tinta de Cabelo',12000,5)
,('Trembolona',16000,6)
,('Bolsa com Armas',7000,7)
,('Armadura Bolada',11000,8)
,('Roupa Collant',2000,9)
,('Apoio do Ussop',8500,10)
,('Garras de Adamantium',1000,11);

CREATE TABLE ARENA (
	idArena INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(45)
);

INSERT INTO Arena (Nome) VALUES
('Mansão X')
,('Batcaverna')
,('Central Park')
,('Wano')
,('CASA DO CARlLE')
,('Nova Iorque')
,('SPTECH');

CREATE TABLE BATALHA (
	FkArena INT, FOREIGN KEY (FkArena) REFERENCES ARENA(idArena),
	FkPersonagem1 INT, FOREIGN KEY (FkPersonagem1) REFERENCES PERSONAGEM (idPersonagem),
	FkPersonagem2 INT, FOREIGN KEY (FkPersonagem2) REFERENCES PERSONAGEM (idPersonagem),
	Vencedor INT,
    PRIMARY KEY (fkArena, fkPersonagem1, fkPersonagem2)
);

INSERT INTO Batalha (fkArena, fkPersonagem1, fkPersonagem2, Vencedor) VALUES
(1, 1, 4, 1)
,(1, 2, 5, 5)
,(6, 3, 6, 6)
,(2, 4, 7, 7)
,(3, 5, 8, 5)
,(3, 6, 9, 9)
,(6, 7, 10, 7)
,(4, 8, 11, 11)
,(5, 9, 1, 1)
,(5, 10, 2, 2)
,(6, 11, 3, 3);

SELECT * FROM Poder;
SELECT * FROM Personagem;
SELECT * FROM Indole;
SELECT * FROM Arma;
SELECT * FROM Arena;
SELECT * FROM Batalha;

# Beyonder deseja saber...

# 1 (Challenge)- Exiba o nome, a defesa, o ataque do poder, o ataque da arma
# e os dados da indole de  três personagens que tenham nome composto,
# ordenado pelo ataque do poder de forma decrescente.
SELECT p.nome, p.defesa, a.ataque, pd.ataque, i.*
	FROM Personagem AS p
		JOIN Poder AS pd
			ON fkPoder = idPoder
		JOIN Arma AS a
			ON idPersonagem = fkPersonagem
		JOIN Indole AS i
			ON idIndole = fkIndole
		WHERE p.nome
			LIKE '% %'
        ORDER BY pd.ataque DESC
        LIMIT 3;

# 2 (Fácil) - Descreva a tabela  Personagem de forma que apareça todos os campos
# e suas informações
DESC personagem;

# 3 (Fácil) - Exiba o ataque da arma mais forte
SELECT nome
	FROM Arma
		ORDER BY ataque DESC
	LIMIT 1;

# 4 (Fácil) - Exiba o nome e a defesa dos personagens
# cuja penúltima letra é 'n'
SELECT nome, defesa
	FROM Personagem
		WHERE nome LIKE '%n_';

# 5 (Média) - Exiba apenas os dados das batalhas que aconteceram na mansão x
SELECT b.*
	FROM Batalha AS b
		JOIN Arena
			ON fkArena = idArena
		WHERE nome = 'Mansão x';

# 6 (Fácil) - Exiba os dados dos poderes 'super' que tenham mais de 
# 3.500 de ataque
SELECT *
	FROM Poder
		WHERE Nome LIKE '%super%' AND
			ataque > 3500;

# 7 (Fácil) - Exiba o nome dos personagens
# cuja penúltima letra do primeiro nome é 'e'
SELECT Nome
	FROM Personagem
		WHERE nome LIKE '%e_ %';

# 8 (Fácil) - Exiba os dados da Arena onde o identificador esteje entre '1 e 3' e '5 e 8' 
SELECT *
	FROM Arena
		WHERE idArena BETWEEN 1 AND 3
			OR
		idArena BETWEEN 5 AND 8;

# 9 (Fácil) - Exiba os dados dos personagens que tenham nome composto
# com o que tem mais defesa no final da lista
SELECT *
	FROM Personagem
		WHERE Nome LIKE '% %'
	ORDER BY defesa;

# 10 (Fácil) - Exiba todos os dados da arena, exeto wano e nova iorque
SELECT *
	FROM Arena
		WHERE Nome <> 'wano'
			AND
		Nome <> 'nova iorque';

# 11 (Fácil) - Exiba o identificador da arena 'CASA DO CARlLE'
SELECT idArena
	FROM Arena
		WHERE nome = 'casa do carlle';

# 12 (Fácil) - Exiba o nome dos personagens que tem poderes
SELECT *
	FROM Personagem
		WHERE fkPoder;

# 13 (Fácil) - Exiba o id e o nome dos personagens que tenham o
# id do poder maior que 3, ordenados pela indole
SELECT idPersonagem, nome
	FROM Personagem
		WHERE fkPoder > 3
	ORDER BY fkIndole;
    
# 14 (Fácil) - Descreva a tabela do Batalha de forma que apareça 4 tuplas
DESC Batalha;

# 15 (Fácil) - Informe os dados das batalhas ganhas pelo personagem de id 7
# de forma que o id da arena mais alta fique no topo da lista
SELECT *
	FROM Batalha
		WHERE vencedor = 7
	ORDER BY fkArena DESC;

# 16 (Fácil) - Informe os dados das batalhas perdidas pelo personagem de id 3
SELECT *
	FROM Batalha
		WHERE vencedor <> 3	AND
			(fkPersonagem1 = 3 OR
			fkPersonagem2 = 3);

# 17 (Fácil) - Informe o identificador das arenas onde o personagem 6 perdeu
SELECT fkArena
	FROM Batalha
		WHERE vencedor <> 6	AND
			(fkPersonagem1 = 6 OR
			fkPersonagem2 = 6);

# 18 (Challenge) -
# Exiba todos os dados da batalha
# o nome da arena;
# o nome e o defesa de todos os personagens;
# o nome e o ataque da sua arma;
# o nome e o ataque do seu poder.

# O resultado deve incluir os personagens que não tem poderes =D.
SELECT bat.*, are.nome Arena
,per.nome nomePersonagem ,per.defesa Defesa
,pod.nome nomePoder, pod.Ataque ataquePoder
,arm.nome nomeArma ,arm.Ataque
	FROM Batalha AS bat
		JOIN Arena AS are
			ON idArena = fkArena
		JOIN Personagem AS per
			ON idPersonagem = fkPersonagem1
		JOIN Indole AS ind
			ON fkIndole = idIndole
		LEFT JOIN Poder AS pod
			ON idPoder = fkPoder
		JOIN Arma AS arm
			ON idPersonagem = fkPersonagem;

# 19 (Médio) - Exiba o nome da arena da batalha entre os personagens com id 6 e 9
SELECT nome
	FROM Batalha
		JOIN Arena
			ON fkArena = idArena
		WHERE fkPersonagem1 = 6 AND
			fkPersonagem2 = 9;
        
# 20 (Médio) - Informe os dados da batalha e a quantidade de vitórias do personagem com id 5
SELECT fkArena, fkPersonagem1, fkPersonagem2, COUNT(Vencedor) qtdVitoria
	FROM Batalha
		WHERE vencedor = 3;

# 21 (Médio) - Informe o nome dos personagens e ataque de suas armas, onde o mais forte fica no topo da lista
SELECT p.nome, ataque
	FROM Personagem AS p
		JOIN Arma
			ON idPersonagem = fkPersonagem;

# 22 (Médio) - Informe a quantidade de Ataque maior ou igual a 12.000
SELECT COUNT(ataque) qtdAtaque
	FROM Arma
		WHERE ataque >= 12000;

# 23 (Médio) - Informe todos os dados do poder,
# o nome e a defesa dos personagens que possuem nome composto
SELECT pod.*, per.Nome, per.defesa
	FROM Poder AS pod
		JOIN Personagem AS per
			ON idPoder = fkPoder
		WHERE per.Nome LIKE '% %';

# 24 (Médio) - Amostre a descrição da indole,
# o nome, a defesa do personagem e id do seu poder
# onde os Ant-heróis estejam no topo da lista
SELECT descricao, nome, defesa, fkPoder
	FROM indole
		JOIN Personagem
			ON idIndole = fkIndole
		ORDER BY descricao;

# 25 (Médio) - Exiba a soma do id e a média da defesa com dois pontos flutuantes dos personagens
# ,onde o identificador seja maior ou igual a 5 e menor que 10
SELECT SUM(idPersonagem) somaId, TRUNCATE(AVG(defesa),2) mediaDefesa
	FROM Personagem
	WHERE idPersonagem >= 5 AND
		idPersonagem < 10;

# 26 (Médio) - Exiba a média dos ataque das arma dos personagens e a média de suas defesas
# onde os identificadores é maior que 2 e menor que 5
SELECT AVG(a.ataque) mediaAtaque, sum(defesa) somaDefesa
	FROM Personagem
		JOIN Arma AS a
	WHERE idPersonagem >= 2 AND
		idPersonagem < 5;

# 27 (Médio) - Informe todos os dados do poder,
# o nome e a defesa dos personagens que não possuem nome composto
SELECT pod.*, per.Nome, per.defesa
	FROM Poder AS pod
		JOIN Personagem AS per
			ON idPoder = fkPoder
		WHERE per.Nome NOT LIKE '% %';

# 28 (Díficil) - Informe o nome e o identificador do personagem, e o ataque de seu Poder com dois pontos flutuantes
# dos personagens com nome composto agrupado pelo ataque da arma
SELECT TRUNCATE(AVG(pod.ataque),2) ataque, idPersonagem, per.nome
	FROM Personagem AS per
		JOIN Poder AS pod
			ON fkPoder = idPoder
		JOIN Arma AS arm
			ON fkPersonagem = idPersonagem
		WHERE per.nome LIKE '% %'
		GROUP BY arm.ataque;
        
# 29 (Díficil) - Selecione o nome dos personagens que tenham a letra "a"
# e a descricao de sua indole agrupado pela descricao
SELECT per.nome, descricao
	FROM Personagem AS per
		JOIN Poder AS pod
			ON idPoder = fkPoder
		JOIN Arma AS arm
			ON fkPersonagem = idPersonagem
		JOIN Indole
			ON fkIndole = idIndole
		WHERE per.nome LIKE '%a%'
        ORDER BY descricao;

# 30 (Díficil) - Selecione todos os dados da batalha
# o nome e a defesa do vencedor
# e a descrição de sua indole
# de forma que o 'Wolverine' fique no topo e o 'Eren' fique no final
# agrupado pela defesa
SELECT b.*, nome, defesa, descricao
	FROM Batalha AS b
		JOIN Personagem
			ON vencedor = idPersonagem
		JOIN Indole
			ON fkIndole = idIndole
		GROUP BY defesa
		ORDER BY vencedor DESC;

# 31 (Díficil) - Exiba todos os dados da batalha, o nome das arenas
# identificadas do 2 ao 9, com exessão do 3 e 8
# e o nome do vencedor, de forma que a arena 'Wano' fique no topo da lista
SELECT b.*, a.nome nomeArena, p.nome nomeVencedor
	FROM Batalha AS b
		JOIN Arena AS a
			ON fkArena = idArena
		JOIN Personagem AS p
			ON vencedor = idPersonagem
		WHERE idPersonagem BETWEEN 2 AND 9 AND
			idPersonagem NOT IN (3,8)
		ORDER BY a.Nome DESC;

# 32 (Díficil) - Selecione os dados da batalha e o nome do personagem
# cuja batalha tenha sido ganha pelo Sr Fantástico
SELECT b.*, nome
	FROM Batalha AS b
		JOIN Personagem
			ON vencedor = idPersonagem
		WHERE vencedor = (SELECT idPersonagem FROM Personagem WHERE nome LIKE '%Fantastico%')
		