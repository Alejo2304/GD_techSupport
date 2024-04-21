CREATE DEFINER=`root`@`localhost` PROCEDURE `createtipoempleado`(
IN `P_cargo` varchar(255),
IN `P_descripcion` varchar(255)
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO tipoempleado(cargo, descripcion)
        VALUES(P_cargo, P_descripcion);
        END