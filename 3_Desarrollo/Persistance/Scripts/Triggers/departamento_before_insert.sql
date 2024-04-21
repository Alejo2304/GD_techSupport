CREATE DEFINER=`root`@`localhost` TRIGGER `departamento_before_insert` BEFORE INSERT ON `departamento` FOR EACH ROW BEGIN
    SET NEW.Iddepartamento = UUID();
    SET NEW.Actualiza = CURRENT_TIMESTAMP;
    END