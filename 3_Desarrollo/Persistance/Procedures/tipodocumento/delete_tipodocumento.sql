CREATE DEFINER=`root`@`localhost` PROCEDURE `deletetipodocumento`(
            IN `P_idTipoGenero` char(36),
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE tipodocumento
            SET Activo = 0
            WHERE idTipoGenero = P_idTipoGenero
            AND Activo = 1;

            END