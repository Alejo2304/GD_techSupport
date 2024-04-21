CREATE DEFINER=`root`@`localhost` PROCEDURE `deletetipodispositivo`(
            IN `P_idTipoDispositivo` char(36),
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE tipodispositivo
            SET Activo = 0
            WHERE idTipoDispositivo = P_idTipoDispositivo
            AND Activo = 1;

            END