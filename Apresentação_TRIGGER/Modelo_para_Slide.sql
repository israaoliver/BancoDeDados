USE OPTUS_TARDE

SELECT * FROM aRTISTAS

CREATE TRIGGER Mostrar ON Artistas AFTER INSERT 
AS 
SELECT * FROM INSERTED

INSERT INTO Artistas (Nome)
VALUES ('red');

DROP TRIGGER Mostrar



CREATE TRIGGER NOME_TRIGGER 
ON Albuns FOR || AFTER || INSTEAD OF / INSERT || UPDATE || DELETE
AS 
-- CORPO DO TRIGGER(EXEMPLO SIMPLES)
SELECT * FROM INSERTED
