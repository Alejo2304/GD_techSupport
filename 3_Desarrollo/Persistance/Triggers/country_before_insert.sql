CREATE DEFINER=`root`@`localhost` TRIGGER `country_before_insert` BEFORE INSERT ON `country` FOR EACH ROW BEGIN
    SET NEW.Idcountry = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP
END