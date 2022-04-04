-- Terceira versão desse banco.

CREATE DATABASE Musica;
USE Musica;

CREATE TABLE Musica(
	idMusica INT PRIMARY KEY AUTO_INCREMENT
	,titulo VARCHAR(40)
	,artista VARCHAR(40)
	,genero VARCHAR(40)
);

INSERT INTO Musica (titulo,artista,genero) VALUES
('Velho Oeste','Akashi Cruz','Hip-Hop'),
('Vampiro','Matuê','Hip-Hop'),
('Estacionamento','JayA Luuck','Hip-Hop'),
('Show das Poderosas','Anitta','Pop'),
('Paradinha','Anitta','Pop'),
('Dream On','Aerosmith','Rock'),
('Malvadão 3','Xamã','Hip-Hop');

UPDATE Musica
SET genero = 'Funk'
WHERE idMusica = '3';

UPDATE Musica
SET artista = 'Mc Poze do Rodo', genero = 'Real Funk'
WHERE idMusica = '5';

DELETE FROM Musica
WHERE idMusica = '7';

-- SCRIPT ABAIXO É DO EXERCICIO 04
-- Em BD-02-Exercicio, também havia um exercício em que vocês criaram uma tabela Musica.
-- Essa tabela tinha os campos: idMusica, titulo (tamanho 40), artista (tamanho 40), genero
-- (tamanho 40), sendo que idMusica é a chave primária da tabela.

-- No mesmo banco de dados dessa tabela, crie a tabela Album, com os campos: idAlbum
-- (chave primária), nome, gravadora.
CREATE TABLE Album(
	idAlbum INT PRIMARY KEY AUTO_INCREMENT
    ,nome VARCHAR(40)
    ,gravadora VARCHAR(40)
);

-- Insira dados na tabela Album.
INSERT INTO Album (nome,gravadora) VALUES
('É o rap É o funk','30praum')
,('Poderosas','Warner Music')
,('Aerosmith','Columbia');

-- Na tabela Musica, adicione uma coluna chamada fkAlbum, e configure essa coluna para que
-- ela seja uma chave estrangeira para a coluna idAlbum, da tabela Album.
ALTER TABLE Musica
	ADD COLUMN fkAlbum INT
    ,ADD FOREIGN KEY (fkAlbum) REFERENCES Album (idAlbum);

-- Coloque valores nessa coluna, de forma que cada música inserida na tabela Musica tenha um
-- álbum correspondente.
UPDATE Musica
SET fkAlbum = 1
WHERE idMusica IN (1,2,3);

UPDATE Musica
SET fkAlbum = 2
WHERE idMusica IN (4,5);

UPDATE Musica
SET fkAlbum = 3
WHERE idMusica IN (6);

-- Exiba os dados das músicas e dos álbuns correspondentes.
SELECT * FROM Musica,Album
WHERE fkAlbum = idAlbum;

-- Exiba os dados das músicas e dos álbuns, mas somente de um determinado álbum
-- (especifique o nome do álbum na consulta).
SELECT * FROM Musica,Album
WHERE fkAlbum = idAlbum AND idAlbum = 2;

-- Exiba os dados das músicas e dos álbuns, mas somente de uma determinada gravadora.
 SELECT * FROM Musica,Album
WHERE fkAlbum = idAlbum AND gravadora LIKE '30praum';
