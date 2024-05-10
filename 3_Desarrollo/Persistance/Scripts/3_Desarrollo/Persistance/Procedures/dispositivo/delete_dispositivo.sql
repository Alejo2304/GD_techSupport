CREATE DEFINER=`root`@`localhost` PROCEDURE `deletedispositivo`(
            IN `P_idDispositivo` char(36)
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE dispositivo
            SET Activo = 0
            WHERE idDispositivo = P_idDispositivo
            AND Activo = 1;

            END