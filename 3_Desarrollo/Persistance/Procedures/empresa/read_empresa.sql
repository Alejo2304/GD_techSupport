
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readempresa`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM empresa WHERE Activo = 1;
        
        END