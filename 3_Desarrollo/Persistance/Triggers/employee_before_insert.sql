CREATE DEFINER=`root`@`localhost` TRIGGER `employee_before_insert` BEFORE INSERT ON `employee` FOR EACH ROW BEGIN
    SET NEW.Idemployee = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP
END