
        CREATE DEFINER=`root`@`localhost` PROCEDURE `readtipousuarioid`(IN `P_idtipousuario` CHAR (36))
        LANGUAGE SQL
        NOT DETERMINISTIC
        CONTAINS SQL
        SQL SECURITY DEFINER
        COMMENT ''
        BEGIN
        
        SELECT * FROM tipousuario
        WHERE idtipousuario = P_idtipousuario
        AND Activo = 1;
        
        END