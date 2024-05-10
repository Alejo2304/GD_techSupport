
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipoempleado`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM tipoempleado WHERE Activo = 1;
        
        END