CREATE DEFINER=`root`@`localhost` TRIGGER `locationBranch_before_insert` BEFORE INSERT ON `locationBranch` FOR EACH ROW BEGIN
    SET NEW.IdlocationBranch = UUID();
END