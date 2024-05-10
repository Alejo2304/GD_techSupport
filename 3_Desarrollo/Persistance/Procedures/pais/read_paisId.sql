
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readpaisid`(IN `P_idpais` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM pais
        WHERE idpais = P_idpais
        AND Activo = 1;
        
        END