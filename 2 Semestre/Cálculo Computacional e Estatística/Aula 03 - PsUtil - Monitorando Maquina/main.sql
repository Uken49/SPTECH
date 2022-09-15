CREATE DATABASE dbPython;
USE dbPython;

CREATE TABLE Maquina(
    macAdress VARCHAR(70) PRIMARY KEY;
    nomeMaquina VARCHAR(70) NOT NULL;
    sistemaOperacional VARCHAR(70) NOT NULL;
)

CREATE TABLE DadosCPU(
    idDados INT PRIMARY KEY AUTO INCREMENT;
    cpu VARCHAR(70) NOT NULL;
    ram VARCHAR(70) NOT NULL;
    macAdress INT NOT NULL,
    FOREIGN KEY (macAdress) REFERENCES Maquina (macAdress)
)