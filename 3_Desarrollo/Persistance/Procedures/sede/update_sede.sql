CREATE DEFINER=`root`@`localhost` PROCEDURE `updatesede`(
            IN `P_idSede` char(36),
            IN `P_idEmpresa` char(36),
            IN `P_idDireccion` char(36),
            IN `P_nombre` varchar(255),
            IN `P_email` varchar(255),
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE sede
            SET idEmpresa = P_idEmpresa
            SET idDireccion = P_idDireccion
            SET nombre = P_nombre
            SET email = P_email
        WHERE idSede = P_idSede
        AND Activo = 1;

        END