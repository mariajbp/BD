DROP PROCEDURE IF EXISTS inserir_alteta;

DELIMITER $$
CREATE PROCEDURE inserir_atleta(IN nome VARCHAR(100), in dataNascimento DATE, in sexo VARCHAR(5), in morada INT)
BEGIN
	DECLARE erro BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET erro = 1;
start transaction
set @morada := 0;
SELECT @morada := M.idMorada FROM Morada as M where M.idMorada = morada;
IF(@morada = 0)
THEN INSERT INTO 

DELIMITER ;