CREATE DEFINER=`root`@`localhost` TRIGGER `detalleFactura_before_insert` BEFORE INSERT ON `detalleFactura` FOR EACH ROW BEGIN
    SET NEW.IddetalleFactura = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END