
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readdiagnostico`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM diagnostico WHERE Activo = 1;
        
        END