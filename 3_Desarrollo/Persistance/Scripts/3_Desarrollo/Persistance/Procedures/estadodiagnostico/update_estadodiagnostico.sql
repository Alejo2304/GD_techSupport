CREATE DEFINER=`root`@`localhost` PROCEDURE `updateestadodiagnostico`(
                IN `P_idEstadoDiagnostico` char(36),
                IN `P_descripcion` varchar(255)
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE estadodiagnostico
        SET 
                descripcion = P_descripcion
        WHERE idEstadoDiagnostico = P_idEstadoDiagnostico
        AND Activo = 1;

        END