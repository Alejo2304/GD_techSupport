
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readusuario`()
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM usuario WHERE Activo = 1;
        
        END