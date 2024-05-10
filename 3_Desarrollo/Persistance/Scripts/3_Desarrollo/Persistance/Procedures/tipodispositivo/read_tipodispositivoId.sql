
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipodispositivoid`(IN `P_idtipodispositivo` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM tipodispositivo
        WHERE idtipodispositivo = P_idtipodispositivo
        AND Activo = 1;
        
        END