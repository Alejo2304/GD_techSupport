CREATE DEFINER=`root`@`localhost` TRIGGER `direccion_before_insert` BEFORE INSERT ON `direccion` FOR EACH ROW BEGIN
    SET NEW.Iddireccion = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END