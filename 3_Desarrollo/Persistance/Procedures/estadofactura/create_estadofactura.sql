CREATE DEFINER=`root`@`localhost` PROCEDURE `createestadofactura`(
IN `P_estado` varchar(255)
)
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        INSERT INTO estadofactura(estado)
        VALUES(P_estado);
        END