
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readdireccion`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM direccion WHERE Activo = 1;
        
        END