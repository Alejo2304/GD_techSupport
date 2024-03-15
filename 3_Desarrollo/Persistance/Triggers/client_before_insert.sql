CREATE DEFINER=`root`@`localhost` TRIGGER `client_before_insert` BEFORE INSERT ON `client` FOR EACH ROW BEGIN
    SET NEW.Idclient = UUID();
END