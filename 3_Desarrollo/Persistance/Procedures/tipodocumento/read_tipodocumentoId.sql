
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipodocumentoid`(IN `P_idtipodocumento` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM tipodocumento
        WHERE idtipodocumento = P_idtipodocumento
        AND Activo = 1;
        
        END