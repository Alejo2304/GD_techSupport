CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteestadodiagnostico`(
            IN `P_idEstadoDiagnostico` char(36)
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE estadodiagnostico
            SET Activo = 0
            WHERE idEstadoDiagnostico = P_idEstadoDiagnostico
            AND Activo = 1;

            END