CREATE DEFINER=`root`@`localhost` TRIGGER `empresa_before_insert` BEFORE INSERT ON `empresa` FOR EACH ROW BEGIN
    SET NEW.Idempresa = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END