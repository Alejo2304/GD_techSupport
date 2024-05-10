
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readdispositivoid`(IN `P_iddispositivo` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM dispositivo
        WHERE iddispositivo = P_iddispositivo
        AND Activo = 1;
        
        END