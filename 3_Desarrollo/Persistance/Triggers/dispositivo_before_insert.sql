CREATE DEFINER=`root`@`localhost` TRIGGER `dispositivo_before_insert` BEFORE INSERT ON `dispositivo` FOR EACH ROW BEGIN
    SET NEW.Iddispositivo = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END