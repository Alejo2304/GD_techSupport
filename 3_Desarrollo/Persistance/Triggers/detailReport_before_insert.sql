CREATE DEFINER=`root`@`localhost` TRIGGER `detailReport_before_insert` BEFORE INSERT ON `detailReport` FOR EACH ROW BEGIN
    SET NEW.IddetailReport = UUID();
END