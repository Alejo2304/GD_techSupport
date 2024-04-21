CREATE DEFINER=`root`@`localhost` PROCEDURE `createtipodispositivo`(
IN `P_Nombre` varchar(255),
IN `P_Descripción` varchar(255)
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO tipodispositivo(Nombre, Descripción)
        VALUES(P_Nombre, P_Descripción);
        END