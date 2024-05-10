
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readestadofacturaid`(IN `P_idestadofactura` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM estadofactura
        WHERE idestadofactura = P_idestadofactura
        AND Activo = 1;
        
        END