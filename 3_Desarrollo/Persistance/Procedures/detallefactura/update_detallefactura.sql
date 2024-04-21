CREATE DEFINER=`root`@`localhost` PROCEDURE `updatedetallefactura`(
                IN `P_idDetalleFactura` char(36),
                IN `P_idFactura` char(36),
                IN `P_idDiagnostico` char(36),
                IN `P_descripcion` varchar(255),
                IN `P_subtotal` decimal(12,2)
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE detallefactura
        SET 
                idFactura = P_idFactura,
                idDiagnostico = P_idDiagnostico,
                descripcion = P_descripcion,
                subtotal = P_subtotal
        WHERE idDetalleFactura = P_idDetalleFactura
        AND Activo = 1;

        END