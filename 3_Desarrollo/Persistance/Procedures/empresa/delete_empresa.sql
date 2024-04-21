CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteempresa`(
            IN `P_idEmpresa` char(36)
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE empresa
            SET Activo = 0
            WHERE idEmpresa = P_idEmpresa
            AND Activo = 1;

            END