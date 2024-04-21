CREATE DEFINER=`root`@`localhost` PROCEDURE `updatedepartamento`(
            IN `P_idDepartamento` char(36),
            IN `P_idPais` char(36),
            IN `P_nombre` varchar(255),
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE departamento
            SET idPais = P_idPais
            SET nombre = P_nombre
        WHERE idDepartamento = P_idDepartamento
        AND Activo = 1;

        END