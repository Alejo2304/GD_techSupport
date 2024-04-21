
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readdetallediagnostico`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM detallediagnostico WHERE Activo = 1;
        
        END