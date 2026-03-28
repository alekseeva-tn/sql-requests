INSERT INTO tbl_ContactCareer (
CreatedOn, ModifiedOn, ChangeDate,
ContactID, AccountID, 
JobID, JobTitle, DepartmentID,
IsPrimary, IsCurrent
)
SELECT 
GETDATE(), GETDATE(), GETDATE(), 
C.ID, A.ID,
C.JobID, C.JobTitle, C.DepartmentID,
1, 1
FROM tbl_Account A
JOIN tbl_Contact C ON A.ID = C.AccountID
WHERE NOT EXISTS (
SELECT ID
FROM tbl_ContactCareer CC
WHERE CC.AccountID = A.ID
AND CC.ContactID = C.ID
)