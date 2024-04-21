CREATE DEFINER=`root`@`localhost` PROCEDURE `deletetipoempleado`(
            IN `P_idTipoEmpleado` char(36)
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE tipoempleado
            SET Activo = 0
            WHERE idTipoEmpleado = P_idTipoEmpleado
            AND Activo = 1;

            END