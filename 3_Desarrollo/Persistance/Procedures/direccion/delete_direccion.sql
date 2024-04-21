CREATE DEFINER=`root`@`localhost` PROCEDURE `deletedireccion`(
            IN `P_idDireccion` char(36),
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE direccion
            SET Activo = 0
            WHERE idDireccion = P_idDireccion
            AND Activo = 1;

            END