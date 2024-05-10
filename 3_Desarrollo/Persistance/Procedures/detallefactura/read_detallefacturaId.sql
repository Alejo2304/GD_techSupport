
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readdetallefacturaid`(IN `P_iddetallefactura` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM detallefactura
        WHERE iddetallefactura = P_iddetallefactura
        AND Activo = 1;
        
        END