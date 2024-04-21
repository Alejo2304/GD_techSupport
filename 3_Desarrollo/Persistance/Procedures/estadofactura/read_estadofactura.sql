
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readestadofactura`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM estadofactura WHERE Activo = 1;
        
        END