-- Crie um banco de dados chamado AlunoDisciplina e selecione esse banco de dados
-- Implementar no MySQL as tabelas e inserir dados nas tabelas.
CREATE DATABASE AlunoDisciplina;
USE AlunoDisciplina;

CREATE TABLE Aluno(
	ra INT PRIMARY KEY AUTO_INCREMENT
    ,nomeAluno VARCHAR(45)
    ,bairro VARCHAR(45)
);

CREATE TABLE Disciplina(
	idDisciplina INT PRIMARY KEY AUTO_INCREMENT
    ,nomeDisciplina VARCHAR(45)
);

CREATE TABLE Matricula(
	idMatricula INT AUTO_INCREMENT
    ,fkRa INT
    ,fkDisciplina INT
    ,PRIMARY KEY (idMatricula,fkRa,fkDisciplina)
    ,media DECIMAL(4,2)
    ,falta INT
    ,semestre INT
);

INSERT INTO Aluno(nomeAluno, bairro) VALUES
('Jayson Rocha', 'Vila Yolanda')
,('Cora Coralina', 'Jardim Soares')
,('Kaidou Rodrigues', 'Wano')
,('Wanda Vision', 'Tiradentes');

INSERT INTO Disciplina(nomeDisciplina) VALUES
('Banco de Dados')
,('Arquitetura Computacional')
,('Algoritmos')
,('Tecnlogia da Informação');

INSERT INTO Matricula(fkRa, fkDisciplina, media, falta, semestre) VALUES
(1, 3, 9.1, 2, '2')
,(2, 2, 6, 6, '4')
,(3, 2, 6.16, 10, '3')
,(1, 4, 4.7, 22, '3')
,(4, 1, 7.8, 8, '7')
,(3, 2, 10, 4, '4')
,(2, 3, 1.9, 32,'5');

-- a) Exibir os dados de cada tabela separadamente.
SELECT * FROM Aluno;
SELECT * FROM Disciplina;
SELECT * FROM Matricula;

-- b) Exibir os dados dos alunos e das disciplinas correspondentes.
SELECT * FROM Aluno,Disciplina,Matricula
	WHERE ra = fkRa AND idDisciplina = fkDisciplina;

-- c) Exibir os dados dos alunos e das suas disciplinas, mas somente de uma disciplina.
SELECT * FROM Aluno,Disciplina,Matricula
	WHERE ra = fkRa AND idDisciplina = fkDisciplina AND nomeDisciplina = 'Arquitetura Computacional';
    
-- d) Exibir os dados de um aluno e os dados das disciplinas desse aluno.
SELECT * FROM Aluno,Disciplina,Matricula
	WHERE ra = fkRa AND idDisciplina = fkDisciplina AND nomeAluno= 'Cora Coralina';
    
-- e) Exibir a soma das médias e a soma das quantidades de faltas.
SELECT SUM(media) AS 'Soma das notas', SUM(falta) AS 'Soma das faltas' FROM Aluno,Disciplina,Matricula
	WHERE ra = fkRa AND idDisciplina = fkDisciplina;

-- f) Exibir a média das médias e a média das quantidades de faltas.
SELECT AVG(media) AS 'Média das notas', AVG(falta) AS 'Média das faltas' FROM Aluno,Disciplina,Matricula
	WHERE ra = fkRa AND idDisciplina = fkDisciplina;
    
-- g) Exibir a maior e a menor média.
SELECT MIN(media) AS 'Menor quantidade de notas', MIN(falta) AS 'Menor quantidade de faltas' FROM Aluno,Disciplina,Matricula
	WHERE ra = fkRa AND idDisciplina = fkDisciplina;
    
-- h) Exibir a maior e a menor quantidade de faltas.
SELECT MAX(media) AS 'Maior quantidade de notas', MAX(falta) AS 'Maior quantidade de faltas' FROM Aluno,Disciplina,Matricula
	WHERE ra = fkRa AND idDisciplina = fkDisciplina;

-- i) Exibir a contagem de quantidades de faltas acima de 20.
SELECT COUNT(falta) AS 'Contagem de faltas' FROM Aluno,Disciplina,Matricula
	WHERE ra = fkRa AND idDisciplina = fkDisciplina AND falta > 20;