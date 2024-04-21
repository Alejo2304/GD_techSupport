CREATE DEFINER=`root`@`localhost` PROCEDURE `deletefactura`(
            IN `P_idFactura` char(36),
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE factura
            SET Activo = 0
            WHERE idFactura = P_idFactura
            AND Activo = 1;

            END