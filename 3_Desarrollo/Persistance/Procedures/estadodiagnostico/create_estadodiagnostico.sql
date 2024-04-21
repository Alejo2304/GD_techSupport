CREATE DEFINER=`root`@`localhost` PROCEDURE `createestadodiagnostico`(
IN `P_descripcion` varchar(255),
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO estadodiagnostico(descripcion)
        VALUES(P_descripcion);
        END