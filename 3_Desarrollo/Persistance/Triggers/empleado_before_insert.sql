CREATE DEFINER=`root`@`localhost` TRIGGER `empleado_before_insert` BEFORE INSERT ON `empleado` FOR EACH ROW BEGIN
    SET NEW.Idempleado = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END