CREATE DEFINER=`root`@`localhost` TRIGGER `diagnostico_before_insert` BEFORE INSERT ON `diagnostico` FOR EACH ROW BEGIN
    SET NEW.Iddiagnostico = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END