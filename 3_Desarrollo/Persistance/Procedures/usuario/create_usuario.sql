CREATE DEFINER=`root`@`localhost` PROCEDURE `createusuario`(
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
        
        INSERT INTO usuario(idTipoUsuario, idTipoGenero, idDispositivo, idTipoDocumento, nombre, apellido, telefono, email)
        VALUES(P_idTipoUsuario, P_idTipoGenero, P_idDispositivo, P_idTipoDocumento, P_nombre, P_apellido, P_telefono, P_email);
        END