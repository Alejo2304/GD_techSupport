
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipogenero`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM tipogenero WHERE Activo = 1;
        
        END