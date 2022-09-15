CREATE DATABASE dbApiPython;
USE dbApiPython;

CREATE TABLE Maquina(
    serialId VARCHAR(20) PRIMARY KEY NOT NULL UNIQUE
    ,macAddress VARCHAR(20) NOT NULL UNIQUE
    ,usuario VARCHAR(70) NOT NULL
);

CREATE TABLE DadosMaquina(
	idDadosMaquina INT PRIMARY KEY AUTO_INCREMENT
    ,percentualCPU DECIMAL(5,2) NOT NULL
    ,percentualRAM DECIMAL(5,2) NOT NULL
    ,percentualDisco DECIMAL(5,2) NOT NULL
    ,momento DATETIME NOT NULL
    ,serialID VARCHAR(20)
    ,FOREIGN KEY (serialID) REFERENCES Maquina (serialID)
);