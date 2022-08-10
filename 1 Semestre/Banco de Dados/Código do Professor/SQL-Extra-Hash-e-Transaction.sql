CREATE DATABASE bdTeste;

USE bdTeste;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(32)
);

/*
  HASH MD5
  Processo unidirecional, ou seja, não pode ser revertido para recuperacao o valor original.
  Alem de "esconder" o dado original, hashing podem ser utilizado para indexar/concatenar chaves, afim de aprimorar performance.
  https://pt.wikipedia.org/wiki/MD5    
 */
# Existem vários tipos de HASH, entretanto o MD5 é o menos seguro já que pode ser quebrado fácilmente

-- selecionando "test" normal e "test" com hash MD5.
SELECT 'test', MD5('test');

-- simulando insert de senha com hash MD5

-- insert normal
INSERT INTO usuario (nome, email, senha) VALUES ('Helder - Normal','helder.alvarenga@sptech.school', 'abc123');

-- insert com hash MD5
INSERT INTO usuario (nome, email, senha) VALUES ('Helder - MD5','helder.alvarenga@sptech.school', MD5('abc123'));

SELECT * FROM usuario;

-- Exemplo site quebra md5: https://md5decrypt.net/en/



 -- Cripgorafia AES 
 -- https://pt.wikipedia.org/wiki/Advanced_Encryption_Standard

 -- Processo de encriptar dados de forma que apenas o usuário autorizado que conhece a chave ou senha seja capaz
 --  de recuperar os dados originais.

DROP TABLE usuario;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARBINARY(128)
);


INSERT INTO usuario (nome, email, senha) VALUES ('Helder - AES','helder.alvarenga@sptech.school', AES_ENCRYPT('test', 'chaveseguraparacript'));

SELECT id, nome, email, AES_DECRYPT(senha,'chaveseguraparacript') from usuario;


/*
 *
 * START TRANSACTION
 * 
*/

# Por padrão, o Workbench já vem com o autocommit ON.
# Com o autocommit off, além de executar o script, você precisará confirmar com o comando 'COMMIT'
-- exibe configuracao do autocommit
SELECT @@autocommit;

-- autocommit ON
SET autocommit = 1;
-- autocommit OFF
SET autocommit = OFF;


# Tudo que é executado dentro da TRANSACTION não terá efeito até dar o COMMIT
# COMMIT: Executa o script no banco, parecido com o commit do Git
# ROLLBACK: Todas as execuções dentro da TRANSACTION será anulada, tipo o CTRL+Z


-- PONTO DE INICIO DA TRANSACAO
START TRANSACTION;
# -------

DELETE FROM usuario WHERE id=1;

SELECT * FROM usuario;

# -------
ROLLBACK;
# -------

SELECT * FROM usuario;

START TRANSACTION;
DELETE FROM usuario WHERE id=1;

# -------
COMMIT;