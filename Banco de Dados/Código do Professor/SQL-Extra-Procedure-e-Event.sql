

-- use database acquatec
USE `acquatec`;

-- drop procedure acquarandom caso exista
DROP procedure IF EXISTS `acquarandom`;

-- Exemplo de procedure que realiza insert na tabela medida (dht11, momento e fkaquario)
CREATE PROCEDURE `acquatec`.`acquarandom`(IN NumRows INT, IN MinVal INT, IN MaxVal INT)
BEGIN
        DECLARE i INT;
        SET i = 1;
        START TRANSACTION;
        WHILE i <= NumRows DO
            INSERT INTO medida (dht11_temperatura, momento, fk_aquario) VALUES (MinVal + CEIL(RAND() * (MaxVal - MinVal)), date_add(now(),interval 1 hour), 1);
            SET i = i + 1;
        END WHILE;
        COMMIT;
    END;


-- Habilita event_scheduler
SET GLOBAL event_scheduler = ON;

--  Exibe configuracao do event scheduler no MySQL Server
SHOW VARIABLES WHERE VARIABLE_NAME = 'event_scheduler';
-- ou
select @@global.event_scheduler;

 -- desabilita event_scheduler
SET GLOBAL event_scheduler = OFF;

-- exibe eventos cadastrados
show events;


-- criar evento executando a procedure 
CREATE EVENT insert_medida ON SCHEDULE EVERY 10 SECOND DO call acquatec.acquarandom (5, 18, 32);

-- drop evento
drop EVENT insert_medida;

