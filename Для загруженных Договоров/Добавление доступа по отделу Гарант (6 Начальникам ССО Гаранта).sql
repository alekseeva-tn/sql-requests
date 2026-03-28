/*Дать доступ группе "Отдел ГАРАНТ / Начальник службы сервисного обслуживания" счету, в котором ответственный начальник Гаранта*/
insert into tbl_ContractRight (ID, RecordID, AdminUnitID, CanRead, CanWrite, CanDelete, CanChangeAccess)
select newid(), tbl_Contract.ID, 'f878fe22-bf26-43cc-9611-3297b9b07688', 1, 1, 0, 0
from tbl_Contract
where not exists (select ID from tbl_ContractRight where tbl_ContractRight.RecordID = tbl_Contract.ID
and tbl_ContractRight.AdminUnitID = 'f878fe22-bf26-43cc-9611-3297b9b07688') 
and (tbl_Contract.OwnerID = '28af7fe4-f690-4c86-82f8-fe75f7df9268') /*Иванов А.А.*/