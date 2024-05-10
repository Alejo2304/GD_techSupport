
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readempleadoid`(IN `P_idempleado` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM empleado
        WHERE idempleado = P_idempleado
        AND Activo = 1;
        
        END