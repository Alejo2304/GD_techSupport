
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readciudad`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM ciudad WHERE Activo = 1;
        
        END