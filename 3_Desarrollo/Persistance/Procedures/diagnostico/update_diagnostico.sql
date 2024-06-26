CREATE DEFINER=`root`@`localhost` PROCEDURE `updatediagnostico`(
                IN `P_idDiagnostico` char(36),
                IN `P_idDispositivo` char(36),
                IN `P_idEmpleado` char(36),
                IN `P_idEstadoDiagnostico` char(36),
                IN `P_descripcion` varchar(255),
                IN `P_fechaInicio` datetime,
                IN `P_fechaFin` datetime
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE diagnostico
        SET 
                idDispositivo = P_idDispositivo,
                idEmpleado = P_idEmpleado,
                idEstadoDiagnostico = P_idEstadoDiagnostico,
                descripcion = P_descripcion,
                fechaInicio = P_fechaInicio,
                fechaFin = P_fechaFin
        WHERE idDiagnostico = P_idDiagnostico
        AND Activo = 1;

        END