CREATE DEFINER=`root`@`localhost` TRIGGER `usuario_before_insert` BEFORE INSERT ON `usuario` FOR EACH ROW BEGIN
    SET NEW.Idusuario = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END