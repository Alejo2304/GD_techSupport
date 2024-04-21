CREATE DEFINER=`root`@`localhost` PROCEDURE `createciudad`(
IN `P_idDepartamento` char(36),
IN `P_nombre` varchar(255)
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO ciudad(idDepartamento, nombre)
        VALUES(P_idDepartamento, P_nombre);
        END