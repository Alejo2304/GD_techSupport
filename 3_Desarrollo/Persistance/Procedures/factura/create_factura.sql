CREATE DEFINER=`root`@`localhost` PROCEDURE `createfactura`(
IN `P_idUsuario` char(36),
IN `P_idEstadoFactura` char(36),
IN `P_fecha` datetime,
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO factura(idUsuario, idEstadoFactura, fecha)
        VALUES(P_idUsuario, P_idEstadoFactura, P_fecha);
        END