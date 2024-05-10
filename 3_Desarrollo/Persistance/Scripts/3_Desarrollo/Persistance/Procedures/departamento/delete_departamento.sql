CREATE DEFINER=`root`@`localhost` PROCEDURE `deletedepartamento`(
            IN `P_idDepartamento` char(36)
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE departamento
            SET Activo = 0
            WHERE idDepartamento = P_idDepartamento
            AND Activo = 1;

            END