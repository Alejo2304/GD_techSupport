
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readfacturaid`(IN `P_idfactura` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM factura
        WHERE idfactura = P_idfactura
        AND Activo = 1;
        
        END