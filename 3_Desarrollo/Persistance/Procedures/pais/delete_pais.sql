CREATE DEFINER=`root`@`localhost` PROCEDURE `deletepais`(
            IN `P_idPais` char(36),
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE pais
            SET Activo = 0
            WHERE idPais = P_idPais
            AND Activo = 1;

            END