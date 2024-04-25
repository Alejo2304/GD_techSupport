CREATE DEFINER=`root`@`localhost` PROCEDURE `createtipodispositivo`(
IN `P_Nombre` varchar(255),
IN `P_Descripcion` varchar(255)
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO tipodispositivo(Nombre, Descripcion)
        VALUES(P_Nombre, P_Descripcion);
        END