CREATE DEFINER=`root`@`localhost` PROCEDURE `createdepartamento`(
IN `P_idPais` char(36),
IN `P_nombre` varchar(255)
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO departamento(idPais, nombre)
        VALUES(P_idPais, P_nombre);
        END