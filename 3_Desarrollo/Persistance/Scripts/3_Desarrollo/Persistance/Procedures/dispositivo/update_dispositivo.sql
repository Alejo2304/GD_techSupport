CREATE DEFINER=`root`@`localhost` PROCEDURE `updatedispositivo`(
                IN `P_idDispositivo` char(36),
                IN `P_idUsuario` char(36),
                IN `P_idTipoDispositivo` char(36),
                IN `P_marca` varchar(255),
                IN `P_modelo` varchar(255),
                IN `P_color` varchar(255)
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE dispositivo
        SET 
                idUsuario = P_idUsuario,
                idTipoDispositivo = P_idTipoDispositivo,
                marca = P_marca,
                modelo = P_modelo,
                color = P_color
        WHERE idDispositivo = P_idDispositivo
        AND Activo = 1;

        END