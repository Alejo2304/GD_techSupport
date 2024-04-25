CREATE DEFINER=`root`@`localhost` TRIGGER `tipoEmpleado_before_insert` BEFORE INSERT ON `tipoEmpleado` FOR EACH ROW BEGIN
    SET NEW.IdtipoEmpleado = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END