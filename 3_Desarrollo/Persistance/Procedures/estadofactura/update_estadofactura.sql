CREATE DEFINER=`root`@`localhost` PROCEDURE `updateestadofactura`(
                IN `P_idEstadoFactura` char(36),
                IN `P_estado` varchar(255)
        )
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        UPDATE estadofactura
        SET 
                estado = P_estado
        WHERE idEstadoFactura = P_idEstadoFactura
        AND Activo = 1;

        END