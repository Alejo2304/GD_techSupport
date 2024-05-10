CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteestadofactura`(
            IN `P_idEstadoFactura` char(36)
            )
            LANGUAGE SQL
            NOT DETERMINISTIC
            CONTAINS SQL
            SQL SECURITY DEFINER
            COMMENT ''
            BEGIN

            UPDATE estadofactura
            SET Activo = 0
            WHERE idEstadoFactura = P_idEstadoFactura
            AND Activo = 1;

            END