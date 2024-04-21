CREATE DEFINER=`root`@`localhost` PROCEDURE `deletedetallediagnostico`(
            IN `P_idDetalleDiagnostico` char(36)
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE detallediagnostico
            SET Activo = 0
            WHERE idDetalleDiagnostico = P_idDetalleDiagnostico
            AND Activo = 1;

            END