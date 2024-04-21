CREATE DEFINER=`root`@`localhost` PROCEDURE `updatetipodispositivo`(
                IN `P_idTipoDispositivo` char(36),
                IN `P_Nombre` varchar(255),
                IN `P_Descripci�n` varchar(255)
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE tipodispositivo
        SET 
                Nombre = P_Nombre,
                Descripci�n = P_Descripci�n
        WHERE idTipoDispositivo = P_idTipoDispositivo
        AND Activo = 1;

        END