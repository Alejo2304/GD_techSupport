
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readdiagnosticoid`(IN `P_iddiagnostico` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM diagnostico
        WHERE iddiagnostico = P_iddiagnostico
        AND Activo = 1;
        
        END