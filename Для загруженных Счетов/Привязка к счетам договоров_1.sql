UPDATE tbl_Invoice
SET ContractID = C.ID
FROM tbl_Invoice I, tbl_Contract C
WHERE 
	(I.CustomerID = C.CustomerID) AND
	(I.OwnerID = C.OwnerID) AND
	(
	(CONVERT(char(10), I.InvoiceDate, 102) >=  CONVERT(char(10), C.StartDate, 102)) AND
	(CONVERT(char(10), I.InvoiceDate, 102) <= CONVERT(char(10), C.DueDate, 102))
	)
	AND
	(I.ContractID is NULL) AND
	(C.StartDate is not NULL)