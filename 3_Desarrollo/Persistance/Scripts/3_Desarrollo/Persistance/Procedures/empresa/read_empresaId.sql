
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readempresaid`(IN `P_idempresa` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM empresa
        WHERE idempresa = P_idempresa
        AND Activo = 1;
        
        END