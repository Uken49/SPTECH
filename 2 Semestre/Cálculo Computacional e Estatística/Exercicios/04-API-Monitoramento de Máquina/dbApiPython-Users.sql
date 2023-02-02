-- Usuário usado pelo sistema
CREATE USER 'system'@'localhost' IDENTIFIED BY '!System_C0ntrol!';

GRANT EXECUTE ON PROCEDURE stg_cadastrarMaquina TO 'system'@'localhost';
GRANT SELECT ON  dbApiPython.vw_dadoMaquina TO 'system'@'localhost';
GRANT SELECT ON  dbApiPython.vw_usuarioOnline TO 'system'@'localhost';

FLUSH PRIVILEGES;