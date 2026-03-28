SELECT D.Date, D.DocumentNumber, C.StartDate, C.DueDate, C.ContractNumber
FROM tbl_Document D, tbl_Contract C
WHERE 
	(D.AccountID = C.CustomerID) AND
	(D.OwnerID = C.OwnerID) AND
	(
	(CONVERT(char(10), D.Date, 102) >=  CONVERT(char(10), C.StartDate, 102)) AND
	(CONVERT(char(10), D.Date, 102) <= CONVERT(char(10), C.DueDate, 102))
	)
	AND
	--(I.ContractID is NULL) AND
	(C.StartDate is not NULL)