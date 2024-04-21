CREATE DEFINER=`root`@`localhost` PROCEDURE `createdispositivo`(
IN `P_idUsuario` char(36),
IN `P_idTipoDispositivo` char(36),
IN `P_marca` varchar(255),
IN `P_modelo` varchar(255),
IN `P_color` varchar(255),
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO dispositivo(idUsuario, idTipoDispositivo, marca, modelo, color)
        VALUES(P_idUsuario, P_idTipoDispositivo, P_marca, P_modelo, P_color);
        END