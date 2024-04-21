
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readempleado`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM empleado WHERE Activo = 1;
        
        END