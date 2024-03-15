CREATE DEFINER=`root`@`localhost` TRIGGER `state_before_insert` BEFORE INSERT ON `state` FOR EACH ROW BEGIN
    SET NEW.Idstate = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP
END