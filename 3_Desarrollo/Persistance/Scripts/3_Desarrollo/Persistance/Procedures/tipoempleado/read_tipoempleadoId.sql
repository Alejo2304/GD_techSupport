
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipoempleadoid`(IN `P_idtipoempleado` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM tipoempleado
        WHERE idtipoempleado = P_idtipoempleado
        AND Activo = 1;
        
        END