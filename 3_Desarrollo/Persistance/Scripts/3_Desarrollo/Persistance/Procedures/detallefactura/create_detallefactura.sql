CREATE DEFINER=`root`@`localhost` PROCEDURE `createdetallefactura`(
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
        
        INSERT INTO detallefactura(idFactura, idDiagnostico, descripcion, subtotal)
        VALUES(P_idFactura, P_idDiagnostico, P_descripcion, P_subtotal);
        END