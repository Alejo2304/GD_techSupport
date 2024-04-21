CREATE DEFINER=`root`@`localhost` PROCEDURE `updatetipoempleado`(
                IN `P_idTipoEmpleado` char(36),
                IN `P_cargo` varchar(255),
                IN `P_descripcion` varchar(255)
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE tipoempleado
        SET 
                cargo = P_cargo,
                descripcion = P_descripcion
        WHERE idTipoEmpleado = P_idTipoEmpleado
        AND Activo = 1;

        END