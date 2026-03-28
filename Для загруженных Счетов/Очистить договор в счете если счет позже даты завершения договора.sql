UPDATE tbl_Invoice
SET ContractID = null
--SELECT I.InvoiceDate, I.InvoiceNumber, A.Name, C.DueDate, C.ContractNumber
FROM tbl_Invoice I, tbl_Contract C
WHERE
	(I.ContractID = C.ID) AND
	((CONVERT(char(10), I.InvoiceDate, 102) > CONVERT(char(10), C.DueDate, 102)) OR
	(CONVERT(char(10), I.InvoiceDate, 102) < CONVERT(char(10), C.StartDate, 102))) AND
	(I.ContractID is not null) AND
	(C.DueDate is not null)
