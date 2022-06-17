CREATE DATABASE projetoPI;
USE projetoPI;

-- 1. Criar as tabelas no MySQL e executar as instruções relacionadas a seguir.
CREATE TABLE Grupo(
	idGrupo INT PRIMARY KEY AUTO_INCREMENT
    ,nomeGrupo VARCHAR(45)
    ,descProjeto VARCHAR(45)
);

CREATE TABLE Aluno(
	ra INT PRIMARY KEY
    ,nomeAluno VARCHAR(45)
    ,email VARCHAR(45)
    ,fkGrupo INT, FOREIGN KEY (fkGrupo) REFERENCES Grupo (idGrupo)
);

CREATE TABLE Professor(
	idProfessor INT PRIMARY KEY AUTO_INCREMENT
    ,nomeProfessor VARCHAR(45)
    ,disciplina VARCHAR(45)
);

CREATE TABLE Apresentacao(
	idApresentacao INT
    ,fkGrupo INT, FOREIGN KEY (fkGrupo) REFERENCES Grupo (idGrupo)
    ,fkProfessor INT, FOREIGN KEY (fkProfessor) REFERENCES Professor (idProfessor)
    ,dataHora CHAR(19)
    ,nota DECIMAL(4,2)
    ,PRIMARY KEY(idApresentacao, fkGrupo, fkProfessor)
);

-- 2. Insira dados nas tabelas, de forma que tenha pelo menos 2 grupos cadastrados.

INSERT INTO Grupo (nomeGrupo, descProjeto) VALUES
('AgroConsult','Monitoramento do solo do milho')
,('PurpleTech','Monitoramento de estacionamento')
,('SPMonitore','Monitoramento de espaço em faculdades')
,('Termovac','Monitoramento de produtos temolábeis');

INSERT INTO Aluno (ra, nomeAluno, email, fkGrupo) VALUES
(0322101, 'Helder DR Alvarenga', 'helder@sptech.school', 1)
,(0322125, 'Manjiro Sano', 'mikey@sptech.school', 1)
,(0322164, 'Marcos Antagônico', 'marcos@sptech.school', 2)
,(0322135, 'Maria Juana', 'juana@sptech.school', 3)
,(0322174, 'Jade Pidão', 'jade@sptech.school', 4);

INSERT INTO Professor (nomeProfessor, disciplina) VALUES
('José Yoshirio', 'Algoritimos')
,('Célia Taniwaki', 'Banco de Dados')
,('Mônica Souza', 'Tecnologia da Informação')
,('Marises Machine', 'Arquitetura Computacional')
,('Fernando Brands', 'Projeto de Pesquisa e Inovação');

INSERT INTO Apresentacao (idApresentacao, fkGrupo, fkProfessor, dataHora, nota) VALUES
(1, 2, 4, '2022-06-10 09:45:59', 8.6)
,(2, 1, 2, '2022-06-10 13:30:32', 10)
,(3, 1, 3, '2022-06-10 13:30:32', 10)
,(4, 3, 4, '2022-06-10 22:52:00', 6.1)
,(5, 4, 1, '2022-06-10 12:13:19', 8.9);

-- Após inserir dados nas tabelas:
-- 3. Exibir todos os dados de cada tabela criada, separadamente.
SELECT *
	FROM Grupo;
SELECT *
	FROM Aluno;
SELECT *
	FROM Professor;
SELECT *
	FROM Apresentacao;

-- 4. Se for necessário, fazer os acertos da(s) chave(s) estrangeira(s).

-- 5. Exibir os dados dos grupos e os dados de seus respectivos alunos.
SELECT *
	FROM Grupo, Aluno
		WHERE idGrupo = fkGrupo;

-- 6. Exibir os dados de um determinado grupo e os dados de seus respectivos alunos.
SELECT *
	FROM Grupo, Aluno
		WHERE idGrupo = fkGrupo AND nomeGrupo = 'AgroConsult';

-- 7. Exibir a média das notas atribuídas aos grupos, no geral.
SELECT AVG(nota) AS Média
	FROM Apresentacao;

-- 8. Exibir a nota mínima e a nota máxima que foi atribuída aos grupos, no geral.
SELECT MIN(nota) AS NotaMinima, MAX(nota) AS NotaMaxima
	FROM Apresentacao;
    
-- 9. Exibir a soma das notas dadas aos grupos, no geral.
SELECT SUM(nota) AS SomaDasNotas
	FROM Apresentacao;
    
-- 10. Exibir os dados dos professores que avaliaram cada grupo, os dados dos grupos, a data e o horário da apresentação.
SELECT *
	FROM Apresentacao, Professor
		WHERE idProfessor = fkProfessor;
        
-- 11. Exibir os dados dos professores que avaliaram um determinado grupo, os dados do grupo, a data e o horário da apresentação.
SELECT *
	FROM Apresentacao, Professor
		WHERE idProfessor = fkProfessor AND fkGrupo = 3;
        
-- 12. Exibir os nomes dos grupos que foram avaliados por um determinado professor.
SELECT * 
	FROM Apresentacao, Professor
		WHERE idProfessor = fkProfessor AND nomeProfessor = "Célia Taniwaki";

-- 13. Exibir os dados dos grupos, os dados dos alunos correspondentes, os dados dos professores que avaliaram, a data e o horário da apresentação.
SELECT nomeGrupo, descProjeto, ra, nomeAluno, email, nomeProfessor, disciplina, dataHora, nota
	FROM Grupo, Aluno AS al, Apresentacao AS ap, Professor
		WHERE idGrupo = ap.fkGrupo AND idGrupo = al.fkGrupo AND idProfessor = fkProfessor;
    
-- 14. Exibir a quantidade de notas distintas.
SELECT COUNT(DISTINCT nota) NotasDistintas
	FROM Apresentacao;
    
-- 15. Exibir a identificação do professor (pode ser o fk ou o nome), a média das notas e a soma das notas atribuídas, agrupadas por professor.
SELECT nomeProfessor, AVG(nota) MédiaNotas, SUM(nota) SomaNotas
	FROM Professor, Apresentacao
		WHERE idProfessor = fkProfessor
		GROUP BY fkProfessor;
    
-- 16. Exibir a identificação do grupo (pode ser o fk ou o nome), a média das notas e a soma das notas atribuídas, agrupadas por grupo.
SELECT nomeGrupo, AVG(nota) MédiaNotas, SUM(nota) SomaNotas
	FROM Grupo, Apresentacao
		WHERE idGrupo = fkGrupo
		GROUP BY fkGrupo;
        
-- 17. Exibir a identificação do professor (pode ser o fk ou o nome), a menor nota e a maior nota atribuída, agrupada por professor.
SELECT nomeProfessor, MIN(nota) MenorNota, MAX(nota) MaiorNota
	FROM Professor, Apresentacao
		WHERE idProfessor = fkProfessor
		GROUP BY fkProfessor;
        
-- 18. Exibir a identificação do grupo (pode ser o fk ou o nome), a menor nota e a maior nota atribuída, agrupada por grupo.
SELECT nomeGrupo, MIN(nota) MenorNota, MAX(nota) MaiorNota
	FROM Grupo, Apresentacao
		WHERE idGrupo = fkGrupo
		GROUP BY fkGrupo;
        