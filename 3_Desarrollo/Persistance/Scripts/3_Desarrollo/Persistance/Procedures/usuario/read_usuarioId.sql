
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readusuarioid`(IN `P_idusuario` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM usuario
        WHERE idusuario = P_idusuario
        AND Activo = 1;
        
        END