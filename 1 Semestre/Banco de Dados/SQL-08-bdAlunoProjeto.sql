CREATE DATABASE AlunoProjeto;
-- DROP DATABASE AlunoProjeto;

USE AlunoProjeto;
-- Criar um banco de dados AlunoProjeto no MySQL, selecionar esse banco de dados e
-- executar as instruções relacionadas a seguir.
-- a) Criar as tabelas equivalentes à modelagem.
CREATE TABLE Projeto(
	idProjeto INT PRIMARY KEY AUTO_INCREMENT
    ,nomeProjeto VARCHAR(45)
    ,descProjeto VARCHAR(70)
)AUTO_INCREMENT = 1;

CREATE TABLE Aluno(
	ra INT PRIMARY KEY AUTO_INCREMENT
    ,nomeAluno VARCHAR(45)
    ,telefone VARCHAR(14)
    ,fkProjeto INT, FOREIGN KEY (fkProjeto) REFERENCES Projeto (idProjeto)
    ,fkRepresentante INT, FOREIGN KEY (fkRepresentante) REFERENCES Aluno (ra)
)AUTO_INCREMENT = 2000;

CREATE TABLE Acompanhante(
	idAcompanhante INT PRIMARY KEY AUTO_INCREMENT
    ,nomeAcompanhante VARCHAR(45)
    ,fkAluno INT, FOREIGN KEY (fkAluno) REFERENCES Aluno (ra)
)AUTO_INCREMENT = 3000;

-- b) Inserir dados nas tabelas.
INSERT INTO Projeto (nomeProjeto,descProjeto) VALUES
('Sistema de Irrigação Automática','Um sistema que ativa com a umidade baixa')
,('GPS para lápis','Um sensor de geolocalização para saber onde derrubei meu lápis')
,('Barco com controle bluetooth','Barquinho feito com sistema de arduino UNO');

INSERT INTO Aluno (nomeAluno, telefone, fkProjeto, fkRepresentante) VALUES
('Josemilda Soares','11 96962-1732',1,null)
,('Charles Emanuel','2557-2864',1,2000)
,('Katia Abreu','45 96918-1772',3,2000)
,('Guilherme Briggs','25 5898-6558',2,2000)
,('Advérbio Souza','35 69891-8233',2,2000);

INSERT INTO Acompanhante (nomeAcompanhante, fkAluno) VALUES
('Rihana Soares','2000')
,('Marcos Emauel','2001')
,('Ana Briggs','2002')
,('Cleo Abreu','2003')
,('Advento Souza','2004');

-- c) Exibir todos os dados de cada tabela criada, separadamente.
SELECT * FROM Projeto;
SELECT * FROM Aluno;
SELECT * FROM Acompanhante;

-- d) Fazer os acertos da chave estrangeira, caso não tenha feito no momento da criação.
-- Já fiz =)

-- e) Exibir os dados dos alunos e dos projetos correspondentes.
SELECT * FROM Aluno,Projeto
	WHERE fkProjeto = idProjeto;
    
-- f) Exibir os dados dos alunos e dos seus acompanhantes.
SELECT * FROM Aluno,Acompanhante
	WHERE ra = fkAluno;
    
-- g) Exibir os dados dos alunos e dos seus representantes.
SELECT * FROM Aluno as Al
			 ,Aluno as Rep
	WHERE Rep.fkRepresentante = Al.ra;
    
-- h) Exibir os dados dos alunos e dos projetos correspondentes, mas somente de um
-- determinado projeto (indicar o nome do projeto na consulta).
SELECT * FROM Aluno,Projeto
	WHERE idProjeto = fkProjeto AND nomeProjeto LIKE ('GPS para lápis');
    
-- i) Exibir os dados dos alunos, dos projetos correspondentes e dos seus acompanhantes.
SELECT * FROM Aluno,Acompanhante,Projeto
	WHERE ra = fkAluno AND fkProjeto = idProjeto;
    
