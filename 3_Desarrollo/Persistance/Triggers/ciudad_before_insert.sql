CREATE DEFINER=`root`@`localhost` TRIGGER `ciudad_before_insert` BEFORE INSERT ON `ciudad` FOR EACH ROW BEGIN
    SET NEW.Idciudad = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END