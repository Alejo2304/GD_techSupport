CREATE DEFINER=`root`@`localhost` PROCEDURE `createtipodocumento`(
IN `P_Nombre` varchar(255)
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO tipodocumento(Nombre)
        VALUES(P_Nombre);
        END