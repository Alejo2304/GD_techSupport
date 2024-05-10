
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipodocumento`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM tipodocumento WHERE Activo = 1;
        
        END