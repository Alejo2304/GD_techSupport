
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readdetallediagnosticoid`(IN `P_iddetallediagnostico` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM detallediagnostico
        WHERE iddetallediagnostico = P_iddetallediagnostico
        AND Activo = 1;
        
        END