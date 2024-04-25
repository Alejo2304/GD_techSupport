CREATE DEFINER=`root`@`localhost` TRIGGER `pais_before_insert` BEFORE INSERT ON `pais` FOR EACH ROW BEGIN
    SET NEW.Idpais = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END