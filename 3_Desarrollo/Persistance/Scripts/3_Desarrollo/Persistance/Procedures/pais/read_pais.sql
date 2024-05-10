
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readpais`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM pais WHERE Activo = 1;
        
        END