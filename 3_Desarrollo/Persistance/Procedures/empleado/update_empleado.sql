CREATE DEFINER=`root`@`localhost` PROCEDURE `updateempleado`(
                IN `P_idEmpleado` char(36),
                IN `P_idSede` char(36),
                IN `P_idTipoEmpleado` varchar(255),
                IN `P_nombre` varchar(255),
                IN `P_apellido` varchar(255),
                IN `P_celular` varchar(255),
                IN `P_email` varchar(255),
                IN `P_fechaIngreso` TIMESTAMP
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE empleado
        SET 
                idSede = P_idSede,
                idTipoEmpleado = P_idTipoEmpleado,
                nombre = P_nombre,
                apellido = P_apellido,
                celular = P_celular,
                email = P_email,
                fecha_ingreso = P_fechaIngreso
        WHERE idEmpleado = P_idEmpleado
        AND Activo = 1;

        END