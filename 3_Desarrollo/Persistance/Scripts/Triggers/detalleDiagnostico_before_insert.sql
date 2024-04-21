CREATE DEFINER=`root`@`localhost` TRIGGER `detalleDiagnostico_before_insert` BEFORE INSERT ON `detalleDiagnostico` FOR EACH ROW BEGIN
    SET NEW.IddetalleDiagnostico = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END