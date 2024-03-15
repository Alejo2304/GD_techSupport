CREATE DEFINER=`root`@`localhost` TRIGGER `city_before_insert` BEFORE INSERT ON `city` FOR EACH ROW BEGIN
    SET NEW.Idcity = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP
END