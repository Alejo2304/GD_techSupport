
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readdispositivo`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM dispositivo WHERE Activo = 1;
        
        END