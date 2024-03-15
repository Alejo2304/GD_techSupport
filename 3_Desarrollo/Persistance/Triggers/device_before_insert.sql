CREATE DEFINER=`root`@`localhost` TRIGGER `device_before_insert` BEFORE INSERT ON `device` FOR EACH ROW BEGIN
    SET NEW.Iddevice = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP
END