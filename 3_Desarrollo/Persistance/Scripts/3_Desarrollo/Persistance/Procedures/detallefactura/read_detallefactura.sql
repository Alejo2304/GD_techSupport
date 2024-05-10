
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readdetallefactura`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM detallefactura WHERE Activo = 1;
        
        END