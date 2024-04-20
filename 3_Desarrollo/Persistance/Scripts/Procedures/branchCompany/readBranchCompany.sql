//CALL `readBranchCompany`()

CREATE DEFINER=`root`@`localhost` PROCEDURE `readBranchCompany`()
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN

	SELECT idBranch, idCompany, name, email
   FROM branchCompany
   WHERE Activo = 1;

END