CREATE DEFINER=`root`@`localhost` TRIGGER `service_before_insert` BEFORE INSERT ON `service` FOR EACH ROW BEGIN
    SET NEW.Idservice = UUID();
END