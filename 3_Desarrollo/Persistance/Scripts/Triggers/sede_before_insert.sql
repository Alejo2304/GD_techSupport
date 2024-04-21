CREATE DEFINER=`root`@`localhost` TRIGGER `sede_before_insert` BEFORE INSERT ON `sede` FOR EACH ROW BEGIN
    SET NEW.Idsede = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END