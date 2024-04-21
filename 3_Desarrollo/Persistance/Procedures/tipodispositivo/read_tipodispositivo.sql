
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipodispositivo`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM tipodispositivo WHERE Activo = 1;
        
        END