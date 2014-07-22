sql = " BEGIN;" _
    & " LOCK TABLE protocolo WRITE, protocolo as temp1 READ; " _
    & " SET @ultimoprotocolo = (SELECT MAX(protocolo) protocolo from protocolo as temp1 where exercicio= year(CURDATE()) limit 1);" _
    & " SET @protocolonovo = IF (@ultimoprotocolo IS NULL, CONCAT_WS('',YEAR(CURDATE()),'000001'),@ultimoprotocolo + 1); " _
    & " INSERT INTO protocolo set protocolo=@protocolonovo, exercicio=year(CURDATE()), data_create=CURDATE();" _
    & " select @protocolonovo as protocolo;" _
    & " UNLOCK TABLE;" _
    & " COMMIT;"
