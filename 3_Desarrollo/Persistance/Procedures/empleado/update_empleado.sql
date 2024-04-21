CREATE DEFINER=`root`@`localhost` PROCEDURE `updateempleado`(
            IN `P_idEmpleado` char(36),
            IN `P_idSede` char(36),
            IN `P_idTipoEmpleado` varchar(255),
            IN `P_nombre` varchar(255),
            IN `P_apellido` varchar(255),
            IN `P_celular` varchar(255),
            IN `P_email` varchar(255),
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE empleado
            SET idSede = P_idSede
            SET idTipoEmpleado = P_idTipoEmpleado
            SET nombre = P_nombre
            SET apellido = P_apellido
            SET celular = P_celular
            SET email = P_email
        WHERE idEmpleado = P_idEmpleado
        AND Activo = 1;

        END