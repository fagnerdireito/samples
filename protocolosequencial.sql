BEGIN;
LOCK TABLE protocolo WRITE, protocolo as temp1 READ; 
SET @ultimoprotocolo = (SELECT MAX(protocolo) protocolo from protocolo as temp1 where exercicio= year(CURDATE()) limit 1);
SET @protocolonovo = IF (@ultimoprotocolo IS NULL, CONCAT_WS('',YEAR(CURDATE()),'000001'),@ultimoprotocolo + 1); 
INSERT INTO protocolo set protocolo=@protocolonovo, exercicio=year(CURDATE()), data_create=CURDATE();
select @protocolonovo as protocolo;
UNLOCK TABLE;
COMMIT;
