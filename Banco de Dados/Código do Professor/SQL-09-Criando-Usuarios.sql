CREATE DATABASE sptech;
-- DROP DATABASE sptech;

USE sptech;

CREATE TABLE grupo(
	idGrupo INT PRIMARY KEY AUTO_INCREMENT
    ,nomeGrupo VARCHAR(30)
);

CREATE TABLE aluno (
	id INT PRIMARY KEY AUTO_INCREMENT
	,nome VARCHAR(50)
	,email VARCHAR(50)
	,senha VARCHAR(50)
    ,fkGrupo INT, FOREIGN KEY (fkGrupo) REFERENCES Grupo (idGrupo)
);

INSERT INTO GRUPO (nomeGrupo) VALUES
('AgroConsult')
,('PopCorn')
,('Doranranran');

INSERT INTO ALUNO (nome,email,senha,fkGrupo) VALUES
('Helder','helder@sptech.school','123456',1)
,('Juliana','juliana@sptech.school','234567',2)
,('Feliciano','feliciano@sptech.school','345678',1);

-- 							PERMISSÕES

-- CRIANDO USUARIO
-- 		Nome do user e o ip			Senha do user
-- CREATE USER 'estagiario'@'%' IDENTIFIED BY 'sptech';
-- 				% = todos os ip's
CREATE USER 'estagiario'@'localhost' IDENTIFIED BY 'sptech';

-- DELETANDO UM USUARIO
DROP USER 'estagiario'@'localhost';

-- Exibe as permissoes que o user tem
SHOW GRANTS FOR 'estagiario'@'localhost';

-- 				 CONCEDENDO PERMISSÕES
-- -- SELECT
GRANT SELECT ON sptech.* TO 'estagiario'@'localhost';

-- -- INSERT
GRANT INSERT ON sptech.grupo TO 'estagiario'@'localhost';

-- -- CREATE TABLE
GRANT CREATE ON sptech.grupo TO 'estagiario'@'localhost';


-- Concedando permissão para update em apenas uma coluna
GRANT UPDATE (nomeGrupo) ON sptech.grupo TO 'estagiario'@'localhost';


-- 				REVOGANDO PERMISSÕES
-- -- SELECT
REVOKE SELECT, GRANT OPTION FROM 'estagiario'@'localhost';

-- tirando todas as permissões
REVOKE ALL, GRANT OPTION FROM 'estagiario'@'localhost';

-- Comando que atualiza/aplica as permissões
FLUSH PRIVILEGES;
