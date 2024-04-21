CREATE DEFINER=`root`@`localhost` PROCEDURE `createsede`(
IN `P_idEmpresa` char(36),
IN `P_idDireccion` char(36),
IN `P_nombre` varchar(255),
IN `P_email` varchar(255),
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO sede(idEmpresa, idDireccion, nombre, email)
        VALUES(P_idEmpresa, P_idDireccion, P_nombre, P_email);
        END