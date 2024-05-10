
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readdepartamentoid`(IN `P_iddepartamento` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM departamento
        WHERE iddepartamento = P_iddepartamento
        AND Activo = 1;
        
        END