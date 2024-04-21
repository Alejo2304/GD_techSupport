CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteciudad`(
            IN `P_idCiudad` char(36),
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE ciudad
            SET Activo = 0
            WHERE idCiudad = P_idCiudad
            AND Activo = 1;

            END