CREATE DEFINER=`root`@`localhost` PROCEDURE `updateempresa`(
                IN `P_idEmpresa` char(36),
                IN `P_nombre` varchar(255)
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE empresa
        SET 
                nombre = P_nombre
        WHERE idEmpresa = P_idEmpresa
        AND Activo = 1;

        END