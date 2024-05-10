CREATE DEFINER=`root`@`localhost` PROCEDURE `creatediagnostico`(
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
        
        INSERT INTO diagnostico(idDispositivo, idEmpleado, idEstadoDiagnostico, descripcion, fechaInicio, fechaFin)
        VALUES(P_idDispositivo, P_idEmpleado, P_idEstadoDiagnostico, P_descripcion, P_fechaInicio, P_fechaFin);
        END