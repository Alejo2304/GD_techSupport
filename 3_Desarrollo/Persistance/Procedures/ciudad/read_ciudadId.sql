
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readciudadid`(IN `P_idciudad` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM ciudad
        WHERE idciudad = P_idciudad
        AND Activo = 1;
        
        END