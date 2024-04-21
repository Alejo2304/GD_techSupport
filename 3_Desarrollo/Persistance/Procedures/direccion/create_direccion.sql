CREATE DEFINER=`root`@`localhost` PROCEDURE `createdireccion`(
IN `P_idCiudad` char(36),
IN `P_direccion` varchar(255),
IN `P_zipCode` varchar(15)
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO direccion(idCiudad, direccion, zipCode)
        VALUES(P_idCiudad, P_direccion, P_zipCode);
        END