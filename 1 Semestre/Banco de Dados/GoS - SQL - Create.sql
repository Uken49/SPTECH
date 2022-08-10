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

INSERT INTO PODER (Ataque, Nome) VALUES
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

INSERT INTO PERSONAGEM (Nome, Defesa, fkPoder,fkIndole ) VALUES
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

INSERT INTO ARENA (Nome) VALUES
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

INSERT INTO BATALHA (fkArena, fkPersonagem1, fkPersonagem2, Vencedor) VALUES
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
