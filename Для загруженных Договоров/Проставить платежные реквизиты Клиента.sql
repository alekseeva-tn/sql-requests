UPDATE tbl_Contract
SET BillInfoID = ABI.ID
FROM tbl_Contract C, tbl_AccountBillingInfo ABI
WHERE 
	C.CustomerID = ABI.AccountID