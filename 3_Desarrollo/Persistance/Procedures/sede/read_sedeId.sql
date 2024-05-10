
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readsedeid`(IN `P_idsede` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM sede
        WHERE idsede = P_idsede
        AND Activo = 1;
        
        END