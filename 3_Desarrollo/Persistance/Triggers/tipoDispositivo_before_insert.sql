CREATE DEFINER=`root`@`localhost` TRIGGER `tipoDispositivo_before_insert` BEFORE INSERT ON `tipoDispositivo` FOR EACH ROW BEGIN
    SET NEW.IdtipoDispositivo = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END