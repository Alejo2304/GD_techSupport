
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipogeneroid`(IN `P_idtipogenero` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM tipogenero
        WHERE idtipogenero = P_idtipogenero
        AND Activo = 1;
        
        END