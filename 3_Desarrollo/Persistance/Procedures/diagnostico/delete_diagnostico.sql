CREATE DEFINER=`root`@`localhost` PROCEDURE `deletediagnostico`(
            IN `P_idDiagnostico` char(36),
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE diagnostico
            SET Activo = 0
            WHERE idDiagnostico = P_idDiagnostico
            AND Activo = 1;

            END