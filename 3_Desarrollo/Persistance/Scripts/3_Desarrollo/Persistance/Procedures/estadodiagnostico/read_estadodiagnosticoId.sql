
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readestadodiagnosticoid`(IN `P_idestadodiagnostico` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM estadodiagnostico
        WHERE idestadodiagnostico = P_idestadodiagnostico
        AND Activo = 1;
        
        END