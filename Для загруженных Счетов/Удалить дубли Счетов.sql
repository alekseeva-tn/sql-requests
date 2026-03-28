WITH CTE(N) AS
(
 SELECT ROW_NUMBER() OVER(PARTITION BY InvoiceDate, InvoiceNumber, Amount, UID1C, Object1C
 ORDER BY InvoiceDate, InvoiceNumber, Amount, UID1C, Object1C)
 FROM [tbl_Invoice]
)
DELETE CTE WHERE N>1;