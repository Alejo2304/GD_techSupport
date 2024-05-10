CREATE DEFINER=`root`@`localhost` PROCEDURE `deletetipousuario`(
            IN `P_idTipoUsuario` char(36)
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE tipousuario
            SET Activo = 0
            WHERE idTipoUsuario = P_idTipoUsuario
            AND Activo = 1;

            END