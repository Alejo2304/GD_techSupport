CREATE DEFINER=`root`@`localhost` TRIGGER `branchCompany_before_insert` BEFORE INSERT ON `branchCompany` FOR EACH ROW BEGIN
    SET NEW.IdbranchCompany = UUID();
END