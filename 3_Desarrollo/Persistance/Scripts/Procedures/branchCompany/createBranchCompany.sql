CREATE DEFINER=`root`@`localhost` PROCEDURE `createBranchCompany`(
	IN `P_idBranch` CHAR(33),
    IN `P_idCompany` CHAR(33),
    IN `P_name` VARCHAR(255),
    IN `P_email` VARCHAR(255),

)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN

INSERT INTO branchCompany(idBranch, idCompany, name, email)
VALUES (P_idBranch, P_idCompany, P_name, P_email);

END