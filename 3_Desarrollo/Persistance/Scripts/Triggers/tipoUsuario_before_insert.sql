CREATE DEFINER=`root`@`localhost` TRIGGER `tipoUsuario_before_insert` BEFORE INSERT ON `tipoUsuario` FOR EACH ROW BEGIN
    SET NEW.IdtipoUsuario = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END