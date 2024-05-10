CREATE DEFINER=`root`@`localhost` PROCEDURE `createpais`(
IN `P_nombre` varchar(255)
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO pais(nombre)
        VALUES(P_nombre);
        END