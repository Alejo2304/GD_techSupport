CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteusuario`(
            IN `P_idUsuario` char(36)
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE usuario
            SET Activo = 0
            WHERE idUsuario = P_idUsuario
            AND Activo = 1;

            END