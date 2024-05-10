
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readestadodiagnostico`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM estadodiagnostico WHERE Activo = 1;
        
        END