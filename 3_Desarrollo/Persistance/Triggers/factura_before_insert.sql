CREATE DEFINER=`root`@`localhost` TRIGGER `factura_before_insert` BEFORE INSERT ON `factura` FOR EACH ROW BEGIN
    SET NEW.Idfactura = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END