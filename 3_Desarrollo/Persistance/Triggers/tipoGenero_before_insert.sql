CREATE DEFINER=`root`@`localhost` TRIGGER `tipoGenero_before_insert` BEFORE INSERT ON `tipoGenero` FOR EACH ROW BEGIN
    SET NEW.IdtipoGenero = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END