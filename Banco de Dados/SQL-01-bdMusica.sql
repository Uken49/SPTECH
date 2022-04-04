-- No MySQL Workbench, crie um banco de dados chamado Musica. Selecione esse banco de dados.
CREATE DATABASE Musica;
USE Musica;

/*
Criar a tabela chamada Musica para conter os dados: idMusica, titulo (tamanho 40), artista(tamanho 40),
genero (tamanho 40), sendo que idMusica é a chave primária da tabela.
*/
CREATE TABLE Musica(
	idMusica INT PRIMARY KEY
	,titulo VARCHAR(40)
	,artista VARCHAR(40)
	,genero VARCHAR(40)
);

/*
Inserir dados na tabela, procurando colocar um gênero de música que tenha mais de uma música,
e um artista, que tenha mais de uma música cadastrada. Procure inserir pelo menos umas 7 músicas.
*/
INSERT INTO Musica VALUES
(1,'Velho Oeste','Akashi Cruz','Hip-Hop'),
(2,'Vampiro','Matuê','Hip-Hop'),
(3,'Estacionamento','JayA Luuck','Hip-Hop'),
(4,'Show das Poderosas','Anitta','Pop'),
(5,'Paradinha','Anitta','Pop'),
(6,'Dream On','Aerosmith','Rock'),
(7,'Malvadão 3','Xamã','Hip-Hop');

-- Exibir todos os dados da tabela. 
SELECT * FROM musica;

-- Exibir apenas os títulos e os artistas das músicas.
SELECT titulo, artista FROM musica;

-- Exibir apenas os gêneros e os artistas, nessa ordem.
SELECT genero, artista FROM musica;

-- Exibir os dados das músicas de um determinado gênero.
SELECT * FROM musica
WHERE genero = 'hip-hop';

-- Exibir os dados das músicas de um determinado artista.
SELECT * FROM musica
WHERE artista = 'anitta';

-- Exibir apenas os títulos das músicas de um determinado gênero.
SELECT titulo FROM musica
WHERE genero = 'pop';

-- Exibir apenas os títulos e o gênero das músicas de um determinado artista.
SELECT titulo, genero FROM musica
WHERE artista = 'anitta';

-- Exibir os dados das músicas cujo idMusica esteja entre um valor e outro (por exemplo, entre 2 e 5).
SELECT * FROM musica
WHERE idMusica > 2 && idMusica < 7;

-- Exibir os dados das músicas cujo idMusica seja menor ou igual a um valor.
SELECT * FROM musica
WHERE idMusica <= 4;

-- Exibir os dados das músicas cujo idMusica seja maior do que um valor.
SELECT * FROM musica
WHERE idMusica > 3;