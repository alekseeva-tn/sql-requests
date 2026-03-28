SELECT I.InvoiceDate, I.InvoiceNumber, I.Amount, C.StartDate, C.DueDate, C.ContractNumber, C.Amount
FROM tbl_Invoice I, tbl_Contract C
WHERE 
	I.CustomerID = C.CustomerID AND
	I.OwnerID = C.OwnerID AND
	(CONVERT(char(10), I.InvoiceDate, 102) >=  CONVERT(char(10), C.StartDate, 102)) AND
	/*(	
	(CONVERT(char(10), I.InvoiceDate, 102) <= CONVERT(char(10), C.DueDate, 102)) OR
	(Ñ.DueDate = null)
	)
	AND*/
	(I.ContractID is NULL) AND
	(C.StartDate is not NULL) AND
	(I.Amount = C.Amount)
	--(Ñ.DueDate is null)
ORDER BY I.InvoiceDate, I.InvoiceNumber
