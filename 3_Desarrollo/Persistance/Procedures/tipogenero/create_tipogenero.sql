CREATE DEFINER=`root`@`localhost` PROCEDURE `createtipogenero`(
IN `P_Nombre` varchar(255)
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO tipogenero(Nombre)
        VALUES(P_Nombre);
        END