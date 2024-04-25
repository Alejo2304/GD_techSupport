CREATE DEFINER=`root`@`localhost` TRIGGER `estadoDiagnostico_before_insert` BEFORE INSERT ON `estadoDiagnostico` FOR EACH ROW BEGIN
    SET NEW.IdestadoDiagnostico = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END