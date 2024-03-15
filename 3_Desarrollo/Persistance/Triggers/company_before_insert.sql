CREATE DEFINER=`root`@`localhost` TRIGGER `company_before_insert` BEFORE INSERT ON `company` FOR EACH ROW BEGIN
    SET NEW.Idcompany = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP
END