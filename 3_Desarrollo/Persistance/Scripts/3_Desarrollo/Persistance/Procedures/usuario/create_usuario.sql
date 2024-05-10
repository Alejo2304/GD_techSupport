CREATE DEFINER=`root`@`localhost` PROCEDURE `createusuario`(
IN `P_idTipoUsuario` char(36),
IN `P_idTipoGenero` char(36),
IN `P_idTipoDocumento` char(36),
IN `P_nombre` varchar(50),
IN `P_apellido` varchar(50),
IN `P_telefono` varchar(20),
IN `P_email` varchar(100),
IN `P_Activo` bit(1)
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO usuario(idTipoUsuario, idTipoGenero, idTipoDocumento, nombre, apellido, telefono, email, Activo)
        VALUES(P_idTipoUsuario, P_idTipoGenero, P_idTipoDocumento, P_nombre, P_apellido, P_telefono, P_email, P_Activo);
        END