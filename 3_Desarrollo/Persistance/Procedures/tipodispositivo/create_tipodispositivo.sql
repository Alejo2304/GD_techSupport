CREATE DEFINER=`root`@`localhost` PROCEDURE `createtipodispositivo`(
IN `P_Nombre` varchar(255),
IN `P_Descripci�n` varchar(255)
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO tipodispositivo(Nombre, Descripci�n)
        VALUES(P_Nombre, P_Descripci�n);
        END