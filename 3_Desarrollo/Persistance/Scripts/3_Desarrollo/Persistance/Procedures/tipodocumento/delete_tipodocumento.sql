CREATE DEFINER=`root`@`localhost` PROCEDURE `deletetipodocumento`(
            IN `P_idTipoDocumento` char(36)
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE tipodocumento
            SET Activo = 0
            WHERE idTipoDocumento = P_idTipoDocumento
            AND Activo = 1;

            END