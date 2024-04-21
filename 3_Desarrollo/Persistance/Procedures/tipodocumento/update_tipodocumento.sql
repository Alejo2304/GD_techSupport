CREATE DEFINER=`root`@`localhost` PROCEDURE `updatetipodocumento`(
                IN `P_idTipoDocumento` char(36),
                IN `P_Nombre` varchar(255)
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE tipodocumento
        SET 
                Nombre = P_Nombre
        WHERE idTipoDocumento = P_idTipoDocumento
        AND Activo = 1;

        END