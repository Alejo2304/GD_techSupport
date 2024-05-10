CREATE DEFINER=`root`@`localhost` PROCEDURE `createtipodispositivo`(
IN `P_Nombre` varchar(255),
IN `P_descripcion` varchar(255)
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO tipodispositivo(Nombre, descripcion)
        VALUES(P_Nombre, P_descripcion);
        END