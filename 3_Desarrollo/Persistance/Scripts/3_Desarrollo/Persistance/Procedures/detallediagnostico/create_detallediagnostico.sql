CREATE DEFINER=`root`@`localhost` PROCEDURE `createdetallediagnostico`(
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
        
        INSERT INTO detallediagnostico(idDiagnostico, observaciones, fechaDiagnostico)
        VALUES(P_idDiagnostico, P_observaciones, P_fechaDiagnostico);
        END