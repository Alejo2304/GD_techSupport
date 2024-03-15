CREATE DEFINER=`root`@`localhost` TRIGGER `report_before_insert` BEFORE INSERT ON `report` FOR EACH ROW BEGIN
    SET NEW.Idreport = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP
END