CREATE DEFINER=`root`@`localhost` PROCEDURE `updatefactura`(
                IN `P_idFactura` char(36),
                IN `P_idUsuario` char(36),
                IN `P_idEstadoFactura` char(36),
                IN `P_fecha` datetime
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE factura
        SET 
                idUsuario = P_idUsuario,
                idEstadoFactura = P_idEstadoFactura,
                fecha = P_fecha
        WHERE idFactura = P_idFactura
        AND Activo = 1;

        END