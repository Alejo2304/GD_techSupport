
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readfactura`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM factura WHERE Activo = 1;
        
        END