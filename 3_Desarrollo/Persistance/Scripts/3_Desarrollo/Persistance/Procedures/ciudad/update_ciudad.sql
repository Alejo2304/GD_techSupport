CREATE DEFINER=`root`@`localhost` PROCEDURE `updateciudad`(
                IN `P_idCiudad` char(36),
                IN `P_idDepartamento` char(36),
                IN `P_nombre` varchar(255)
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE ciudad
        SET 
                idDepartamento = P_idDepartamento,
                nombre = P_nombre
        WHERE idCiudad = P_idCiudad
        AND Activo = 1;

        END