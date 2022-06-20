# Dá para comentar usando o sutenido

CREATE DATABASE dbAluno;
USE dbAluno;

CREATE TABLE Aluno(
	ra		INT PRIMARY KEY AUTO_INCREMENT
    ,nome	VARCHAR(40)
    ,email	VARCHAR(40)
    ,senha	VARCHAR(255)
);


INSERT INTO Aluno (nome, email, senha) VALUES
("Helder", "helder.alvarenga@gmail.com", "123");

INSERT INTO Aluno (nome, email, senha) VALUES
("clau", "clau.maneira@hotmail.com", MD5("123"));

# MD5() é um tipo de hash, atualmente muito ultrapasado
SELECT MD5(nome) AS Nome, MD5(email) AS Email, md5(senha) AS Senha from aluno;
SELECT * FROM Aluno;
# ---------------------------------------------------
# Vendo a configuração do MySQL
# 1 = Dá o commit automaticamente
# 0 = Commit tem que ser dado manualmente

select @@autocommit;

set autocommit = 1;
# ou 
set autocommit = OFF;

# O comando após o START TRANSACTION não será enviado para o banco.
START TRANSACTION;

# Envia para o banco 
COMMIT;
ROLLBACK;