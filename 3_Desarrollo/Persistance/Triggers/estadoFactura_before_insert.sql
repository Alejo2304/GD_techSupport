CREATE DEFINER=`root`@`localhost` TRIGGER `estadoFactura_before_insert` BEFORE INSERT ON `estadoFactura` FOR EACH ROW BEGIN
    SET NEW.IdestadoFactura = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END