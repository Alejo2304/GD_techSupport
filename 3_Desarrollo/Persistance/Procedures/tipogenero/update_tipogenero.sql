CREATE DEFINER=`root`@`localhost` PROCEDURE `updatetipogenero`(
                IN `P_idTipoGenero` char(36),
                IN `P_Nombre` varchar(255)
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE tipogenero
        SET 
                Nombre = P_Nombre
        WHERE idTipoGenero = P_idTipoGenero
        AND Activo = 1;

        END