CREATE DEFINER=`root`@`localhost` PROCEDURE `deletedetallefactura`(
            IN `P_idDetalleFactura` char(36)
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE detallefactura
            SET Activo = 0
            WHERE idDetalleFactura = P_idDetalleFactura
            AND Activo = 1;

            END