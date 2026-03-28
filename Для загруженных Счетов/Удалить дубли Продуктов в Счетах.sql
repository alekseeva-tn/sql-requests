WITH CTE(N) AS
(
 SELECT ROW_NUMBER() OVER(PARTITION BY OfferingID, InvoiceID, Amount, UID1C, Object1C
 ORDER BY OfferingID, InvoiceID, Amount, UID1C, Object1C)
 FROM [tbl_OfferingInInvoice]
)
DELETE CTE WHERE N>1;