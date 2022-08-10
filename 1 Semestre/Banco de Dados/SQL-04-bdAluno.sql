-- Em BD-01-Exercicio, vocês criaram em planilhas 3 tabelas (Aluno, Instituicao, Empresa),
-- colocando dados da sua escolha.
CREATE DATABASE Aluno;
USE Aluno;
-- Implemente agora no MySQL essas 3 tabelas, uma vez que agora vocês já sabem como
-- configurar as chaves estrangeiras.

CREATE TABLE Empresa(
	idEmpresa INT PRIMARY KEY AUTO_INCREMENT
    ,nomeEmpresa VARCHAR(50)
    ,contato VARCHAR(40)
) AUTO_INCREMENT = 1000;

CREATE TABLE Instituicao(
	idInstituicao INT PRIMARY KEY AUTO_INCREMENT
    ,nomeInstituicao VARCHAR(50)
    ,localizacao VARCHAR(50)
) AUTO_INCREMENT = 1000;


-- Nesse caso, a tabela Aluno terá 2 chaves estrangeiras, uma para Instituicao e outra para Empresa.
CREATE TABLE Aluno(
	ra INT PRIMARY KEY AUTO_INCREMENT
    ,nomeAluno VARCHAR(50)
    ,hobby VARCHAR(70)
    ,fkInstituicao INT,FOREIGN KEY (fkInstituicao) REFERENCES Instituicao (idInstituicao)
    ,fkEmpresa INT, FOREIGN KEY (fkEmpresa) REFERENCES Empresa (idEmpresa)
) AUTO_INCREMENT = 1000;

-- Insira os dados nas tabelas, conforme você tinha feito nas planilhas.
INSERT INTO Empresa (nomeEmpresa,contato) VALUES
('C6 Bank','Tamires')
,('Safra','Tiffany')
,('Accenture','Celso')
,('B3','Goulart');

INSERT INTO Instituicao (nomeInstituicao,localizacao) VALUES
('Colégio Anglo Leonardo da Vinci','Vila Sônia')
,('Escola Caritas','São Mateus')
,('Mario Manuel Dantas de Aquino','Ferraz de Vasconcelos')
,('Mandaqui','Dom Bosco')
,('ETEC Jorge Street','Jardim São Caetano')
,('FMU','Vila Nova Conceição');

INSERT INTO Aluno (nomeAluno,hobby,fkEmpresa,fkInstituicao) VALUES
('Pedro Moretti','Tocar violão','1000','1000')
,('Nicolas Gonzaga','Lutar taekwondo','1001','1001')
,('Maicoln Chioveto','Tocar flauta','1000','1002')
,('Isabela Hantke','Ler','1002','1003')
,('Júlia Araripe Lopes','Maquiagem','1002','1004')
,('Rafaela Dias','Assistir séries','1003','1005');

-- Exiba os dados dos alunos e das instituições correspondentes.
SELECT * FROM Aluno,Instituicao
WHERE fkInstituicao = idInstituicao;

-- Exiba os dados dos alunos e das empresas correspondentes.
SELECT * FROM Aluno,Empresa
WHERE fkEmpresa = idEmpresa;

-- Exiba os dados dos alunos, das instituições e das empresas correspondentes
SELECT * FROM Aluno,Empresa,Instituicao
WHERE fkEmpresa = idEmpresa AND fkInstituicao = idInstituicao;