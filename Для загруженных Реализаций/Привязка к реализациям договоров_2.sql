UPDATE tbl_Document
SET ContractID = C.ID
FROM tbl_Document D, tbl_Contract C
WHERE 
	D.AccountID = C.CustomerID AND
	D.OwnerID = C.OwnerID AND
	(CONVERT(char(10), D.Date, 102) >=  CONVERT(char(10), C.StartDate, 102)) AND
	(D.ContractID is NULL) AND
	(C.StartDate is not NULL) AND
	(D.AmountID = C.Amount)
