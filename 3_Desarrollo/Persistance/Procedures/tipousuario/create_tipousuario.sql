CREATE DEFINER=`root`@`localhost` PROCEDURE `createtipousuario`(
IN `P_nombre` varchar(255),
IN `P_descripcion` varchar(255)
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO tipousuario(nombre, descripcion)
        VALUES(P_nombre, P_descripcion);
        END