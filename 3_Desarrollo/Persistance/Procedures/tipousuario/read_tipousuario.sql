
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipousuario`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM tipousuario WHERE Activo = 1;
        
        END