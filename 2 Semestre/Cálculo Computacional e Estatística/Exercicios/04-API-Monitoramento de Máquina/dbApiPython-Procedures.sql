USE dbApiPython;

# SET @@autocommit = 0;

# Procedure de cadastro da máquina
DELIMITER $$
CREATE PROCEDURE stg_cadastrarMaquina
 (IN serialId VARCHAR(20), IN macAddress VARCHAR(20), IN usuario VARCHAR(70))
BEGIN
	DECLARE erro_sql TINYINT DEFAULT FALSE;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET erro_sql = TRUE;
	
    START TRANSACTION;
    
    INSERT INTO Maquina (serialId, macAddress, usuario) VALUES
    (serialId, macAddress, usuario);
    
    # Verificando erro para dar o commit
    IF erro_sql = FALSE THEN
		COMMIT;
        SELECT 'Máquina cadastrada com sucesso.' AS Resultado;
    ELSE
		ROLLBACK;
        SELECT 'Erro ao realizar cadastro de máquina.' AS Resultado;
	END IF;
    
END$$
DELIMITER ;

# Procedure de cadastro usuário
DELIMITER $$
CREATE PROCEDURE stg_cadastrarDadosMaquina
 (IN percentualCPU DECIMAL(5,2), IN percentualRAM DECIMAL(5,2), 
 IN percentualDisco DECIMAL(5,2), IN momento DATETIME, IN serialID VARCHAR(20))
BEGIN
	DECLARE erro_sql TINYINT DEFAULT FALSE;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET erro_sql = TRUE;
	
    START TRANSACTION;
    
    INSERT INTO DadosMaquina (percentualCPU, percentualRAM, percentualDisco, momento, serialID)
		VALUES(percentualCPU, percentualRAM, percentualDisco, momento, serialID);
	
    # Verificando erro para dar o commit
    IF erro_sql = FALSE THEN
		COMMIT;
        SELECT 'Dados gravados com sucesso.' AS Resultado;
    ELSE
		ROLLBACK;
        SELECT 'Erro ao salvar os dados.' AS Resultado;
	END IF;
    
END$$
DELIMITER ;

# Procedure que vai inserir os dados randomicamente
DELIMITER $$
CREATE PROCEDURE insert_dadosRandomicos
 (IN minCPU DECIMAL(5,2), IN maxCPU DECIMAL(5,2)
	, IN minRAM DECIMAL(5,2), IN maxRAM DECIMAL(5,2)
    , IN disco DECIMAL(5,2) ,IN serialID VARCHAR(20))
BEGIN
	INSERT INTO DadosMaquina 
    (percentualCPU, percentualRAM, percentualDisco, momento, serialId) VALUES
		(minCPU + CEIL(RAND() * (maxCPU - minCPU))
        ,minRam + CEIL(RAND() * (maxRam - minRam))        
        ,disco , NOW(), serialID);
END$$
DELIMITER ;
