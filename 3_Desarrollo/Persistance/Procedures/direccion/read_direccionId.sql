
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readdireccionid`(IN `P_iddireccion` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM direccion
        WHERE iddireccion = P_iddireccion
        AND Activo = 1;
        
        END