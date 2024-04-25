CREATE DEFINER=`root`@`localhost` PROCEDURE `updatetipousuario`(
                IN `P_idTipoUsuario` char(36),
                IN `P_nombre` varchar(255),
                IN `P_descripcion` varchar(255)
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE tipousuario
        SET 
                nombre = P_nombre,
                descripcion = P_descripcion
        WHERE idTipoUsuario = P_idTipoUsuario
        AND Activo = 1;

        END