CREATE DEFINER=`root`@`localhost` TRIGGER `tipoDocumento_before_insert` BEFORE INSERT ON `tipoDocumento` FOR EACH ROW BEGIN
    SET NEW.IdtipoDocumento = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END