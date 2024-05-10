CREATE DEFINER=`root`@`localhost` PROCEDURE `deletesede`(
            IN `P_idSede` char(36)
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE sede
            SET Activo = 0
            WHERE idSede = P_idSede
            AND Activo = 1;

            END