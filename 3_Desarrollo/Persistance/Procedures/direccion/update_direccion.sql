CREATE DEFINER=`root`@`localhost` PROCEDURE `updatedireccion`(
            IN `P_idDireccion` char(36),
            IN `P_idCiudad` char(36),
            IN `P_direccion` varchar(255),
            IN `P_zipCode` varchar(15),
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE direccion
            SET idCiudad = P_idCiudad
            SET direccion = P_direccion
            SET zipCode = P_zipCode
        WHERE idDireccion = P_idDireccion
        AND Activo = 1;

        END