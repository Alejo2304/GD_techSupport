
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readsede`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM sede WHERE Activo = 1;
        
        END