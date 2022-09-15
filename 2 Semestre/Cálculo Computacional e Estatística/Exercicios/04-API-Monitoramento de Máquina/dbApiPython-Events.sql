# Criando o evento de inserção dos dados randomicos
SET GLOBAL event_scheduler = ON;

CREATE EVENT evt_insert_dadosRandomicos
	ON SCHEDULE
		EVERY 1 SECOND
    DO
		CALL insert_dadosRandomicos(0, 100, 20, 100, 50, 'AE:20:30:00:10');
