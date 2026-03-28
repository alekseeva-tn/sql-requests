SELECT I.InvoiceDate, I.InvoiceNumber, A.Name, C.StartDate, C.DueDate, C.ContractNumber, I.ContractID, C.ID
FROM tbl_Invoice I, tbl_Contract C, tbl_Account A
WHERE
	(I.ContractID = C.ID) AND
	((CONVERT(char(10), I.InvoiceDate, 102) > CONVERT(char(10), C.DueDate, 102)) OR
	(CONVERT(char(10), I.InvoiceDate, 102) < CONVERT(char(10), C.StartDate, 102))) AND
	(I.ContractID is not null) AND
	(C.DueDate is not null) AND
	(I.CustomerID = A.ID)
ORDER BY I.InvoiceDate, I.InvoiceNumber, C.StartDate, C.DueDate