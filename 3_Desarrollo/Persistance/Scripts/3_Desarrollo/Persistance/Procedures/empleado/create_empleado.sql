CREATE DEFINER=`root`@`localhost` PROCEDURE `createempleado`(
IN `P_idSede` char(36),
IN `P_idTipoEmpleado` varchar(255),
IN `P_nombre` varchar(255),
IN `P_apellido` varchar(255),
IN `P_celular` varchar(255),
IN `P_email` varchar(255),
IN `P_Activo` bit(1)
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO empleado(idSede, idTipoEmpleado, nombre, apellido, celular, email, Activo)
        VALUES(P_idSede, P_idTipoEmpleado, P_nombre, P_apellido, P_celular, P_email, P_Activo);
        END