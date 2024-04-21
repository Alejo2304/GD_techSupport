CREATE DEFINER=`root`@`localhost` PROCEDURE `updateusuario`(
            IN `P_idUsuario` char(36),
            IN `P_idTipoUsuario` char(36),
            IN `P_idTipoGenero` char(36),
            IN `P_idDispositivo` char(36),
            IN `P_idTipoDocumento` char(36),
            IN `P_nombre` varchar(50),
            IN `P_apellido` varchar(50),
            IN `P_telefono` varchar(20),
            IN `P_email` varchar(100),
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE usuario
            SET idTipoUsuario = P_idTipoUsuario
            SET idTipoGenero = P_idTipoGenero
            SET idDispositivo = P_idDispositivo
            SET idTipoDocumento = P_idTipoDocumento
            SET nombre = P_nombre
            SET apellido = P_apellido
            SET telefono = P_telefono
            SET email = P_email
        WHERE idUsuario = P_idUsuario
        AND Activo = 1;

        END