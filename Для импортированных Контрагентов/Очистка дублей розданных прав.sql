WITH CTE(N) AS
(
 SELECT ROW_NUMBER() OVER(PARTITION BY RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess
 ORDER BY RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
 FROM [tbl_AccountRight]
)
DELETE CTE WHERE N>1;