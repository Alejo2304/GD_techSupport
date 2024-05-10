
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readdepartamento`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM departamento WHERE Activo = 1;
        
        END