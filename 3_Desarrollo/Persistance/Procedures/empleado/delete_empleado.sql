CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteempleado`(
            IN `P_idEmpleado` char(36),
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE empleado
            SET Activo = 0
            WHERE idEmpleado = P_idEmpleado
            AND Activo = 1;

            END