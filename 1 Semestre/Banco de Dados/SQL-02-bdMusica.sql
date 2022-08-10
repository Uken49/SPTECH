-- Segunda versão desse banco.
-- No MySQL Workbench, crie um banco de dados chamado Musica. Selecione esse banco de dados.

-- Aluno: Helder Davidson Rodrigues Alvarenga    RA: 03221027
CREATE DATABASE Musica;
USE Musica;

/*
Criar a tabela chamada Musica para conter os dados: idMusica, titulo (tamanho 40), artista(tamanho 40),
genero (tamanho 40), sendo que idMusica é a chave primária da tabela.
*/
CREATE TABLE Musica(
	idMusica INT PRIMARY KEY AUTO_INCREMENT
	,titulo VARCHAR(40)
	,artista VARCHAR(40)
	,genero VARCHAR(40)
);

/*
Inserir dados na tabela, procurando colocar um gênero de música que tenha mais de uma música,
e um artista, que tenha mais de uma música cadastrada. Procure inserir pelo menos umas 7 músicas.
*/
INSERT INTO Musica (titulo,artista,genero) VALUES
('Velho Oeste','Akashi Cruz','Hip-Hop'),
('Vampiro','Matuê','Hip-Hop'),
('Estacionamento','JayA Luuck','Hip-Hop'),
('Show das Poderosas','Anitta','Pop'),
('Paradinha','Anitta','Pop'),
('Dream On','Aerosmith','Rock'),
('Malvadão 3','Xamã','Hip-Hop');

-- a) Exibir os dados das músicas cujo idMusica seja diferente de 2 valores, como 2 e 5, por exemplo.
SELECT * FROM Musica
WHERE idMusica NOT IN (2,5);

-- b) Exibir os dados da tabela ordenados pelo título da música.
SELECT * FROM Musica
ORDER BY titulo asc;

-- c) Exibir os dados da tabela ordenados pelo artista em ordem decrescente.
SELECT * FROM Musica
ORDER BY artista desc;

-- d) Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.
SELECT * FROM Musica
WHERE titulo LIKE ('M%');

-- e) Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.
SELECT * FROM Musica
WHERE artista LIKE ('%z');

-- f) Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra.
SELECT * FROM Musica
WHERE genero LIKE ('_i%');

-- g) Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra.
SELECT * FROM Musica
WHERE titulo LIKE ('%_o');

-- h) Altere o gênero de uma música.
UPDATE Musica
SET genero = 'Funk'
WHERE idMusica = '3';

-- i) Altere o nome do artista e o gênero de uma música.
UPDATE Musica
SET artista = 'Mc Poze do Rodo', genero = 'Real Funk'
WHERE idMusica = '5';

-- j) Exclua uma música da tabela.
DELETE FROM Musica
WHERE idMusica = '7';

-- k) Elimine a tabela.
DROP TABLE Musica;