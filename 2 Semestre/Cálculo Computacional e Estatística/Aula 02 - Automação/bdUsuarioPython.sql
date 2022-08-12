CREATE DATABASE bdUsuarioPython;
USE bdUsuarioPython;

CREATE TABLE Usuario(
	idUsuario INT PRIMARY KEY AUTO_INCREMENT
	,email VARCHAR(100) NOT NULL UNIQUE
	,senha VARCHAR(100) NOT NULL
	,nome VARCHAR(100) NOT NULL
    ,sexo CHAR(1) CHECK(sexo == 'f' OR sexo == 'm')
);

CREATE TABLE Imc(
    idImc INT PRIMARY KEY AUTO_INCREMENT
    ,altura DECIMAL(3,2)
	,peso DECIMAL(5,2)
    ,fkUsuario INT FOREIGN KEY,
    FOREIGN KEY (fkUsuario) REFERENCES Usuario (idUsuario)
);
