CREATE DEFINER=`root`@`localhost` PROCEDURE `updatedetallediagnostico`(
                IN `P_idDetalleDiagnostico` char(36),
                IN `P_idDiagnostico` char(36),
                IN `P_observaciones` varchar(255),
                IN `P_fechaDiagnostico` datetime
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE detallediagnostico
        SET 
                idDiagnostico = P_idDiagnostico,
                observaciones = P_observaciones,
                fechaDiagnostico = P_fechaDiagnostico
        WHERE idDetalleDiagnostico = P_idDetalleDiagnostico
        AND Activo = 1;

        END