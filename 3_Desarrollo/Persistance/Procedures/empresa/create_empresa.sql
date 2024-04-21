CREATE DEFINER=`root`@`localhost` PROCEDURE `createempresa`(
IN `P_nombre` varchar(255),
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO empresa(nombre)
        VALUES(P_nombre);
        END