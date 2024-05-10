CREATE DEFINER=`root`@`localhost` PROCEDURE `updatepais`(
                IN `P_idPais` char(36),
                IN `P_nombre` varchar(255)
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE pais
        SET 
                nombre = P_nombre
        WHERE idPais = P_idPais
        AND Activo = 1;

        END