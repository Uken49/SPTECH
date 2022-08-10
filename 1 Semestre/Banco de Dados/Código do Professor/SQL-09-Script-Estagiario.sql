USE sptech;

SHOW GRANTS FOR 'estagiario'@'localhost';

SELECT * FROM Grupo;

INSERT INTO Grupo (nomeGrupo) VALUES 
('Bolinha');

CREATE TABLE Empresa (
	idEmpresa INT PRIMARY KEY AUTO_INCREMENT
    ,nomeEmpresa VARCHAR(40)
    ,CEO VARCHAR(60)
);